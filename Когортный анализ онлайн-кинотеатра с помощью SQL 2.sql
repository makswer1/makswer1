with    first_payments as
            (select user_id
                ,min(transaction_datetime :: date) as first_payment_date
             from SKYENG_DB.Payments
                where status_name = 'success' 
                group by user_id 
                order by user_id asc),
        all_dates as
            (select distinct (class_start_datetime :: date)  as dt
             from SKYENG_DB.classes
                where class_start_datetime >= '2016-01-01' and class_start_datetime < '2017-01-01'
                group by dt),
        all_dates_by_user as
            (select user_id , dt
             from all_dates 
                    join first_payments on all_dates.dt >= first_payments.first_payment_date
                order by 1,2),
        payments_by_dates as   
            (select user_id
               ,transaction_datetime::date as payment_date
               ,sum (classes) as transaction_balance_change
             from SKYENG_DB.Payments
                where status_name = 'success'
                group by user_id, payment_date
                order by user_id asc ),
        payments_by_dates_cumsum as
            (select all_dates_by_user.user_id
               ,dt
               ,transaction_balance_change
               ,sum(coalesce(transaction_balance_change,0)) over (partition by all_dates_by_user.user_id order by dt rows between unbounded preceding and current row) as transaction_balance_change_cs
             from all_dates_by_user as all_dates_by_user
                    left join payments_by_dates as payments_by_dates
                        on all_dates_by_user.user_id = payments_by_dates.user_id
                        and all_dates_by_user.dt = payments_by_dates.payment_date
                        ),
        classes_by_dates as
            (select user_id, date_trunc('day', class_start_datetime) as class_date , 
                count(id_class) * -1 as classes
             from skyeng_db.classes
                    where class_type <> 'trial'
                    AND (class_status = 'success' or  class_status = 'failed_by_student')
            group by 1, 2),
        classes_by_dates_dates_cumsum as
            (select all_dates_by_user.user_id
                ,dt
                ,classes
                ,sum(coalesce(classes,0)) over (partition by all_dates_by_user.user_id order by dt rows between unbounded preceding and current row) as classes_cs
             from all_dates_by_user as all_dates_by_user
                 left join classes_by_dates as classes_by_dates
                     on all_dates_by_user.user_id = classes_by_dates.user_id
                     and all_dates_by_user.dt = classes_by_dates.class_date),
        balances as
            (select payments_by_dates_cumsum.user_id
                ,payments_by_dates_cumsum.dt
                ,transaction_balance_change
                ,transaction_balance_change_cs
                ,classes
                ,classes_cs
                ,classes_cs + transaction_balance_change_cs as balance
            from payments_by_dates_cumsum as payments_by_dates_cumsum
                left join classes_by_dates_dates_cumsum as classes_by_dates_dates_cumsum
                    on payments_by_dates_cumsum.user_id = classes_by_dates_dates_cumsum.user_id
                    and payments_by_dates_cumsum.dt = classes_by_dates_dates_cumsum.dt)
        
select dt
    ,sum(transaction_balance_change) as sum_transaction_balance_change
    ,sum(transaction_balance_change_cs) as sum_transaction_balance_change_cs
    ,sum(classes) as sum_classes
    ,sum(classes_cs) as sum_classes_cs
    ,sum(balance) as sum_balance
from balances
GROUP BY dt
ORDER BY dt


-- ### Задание 2
-- Создайте визуализацию (линейную диаграмму) итогового результата. 
-- Какие выводы можно сделать из получившейся визуализации?

-- ответ на задание 2
-- По графику sum_transaction_balance_change (желтый) видим пиковые значения в начале каждого месяца. 
-- Можно предположить, что студенты получая заработную плату в конце каждого месяца покупают уроки, пополняя баланс.
-- по графику sum_classes (фиолетовый) пиковые значения приходятся на выходные дни, это говорит о том, что студенты предпочитают проходить обучение именно в эти дни.
-- по графику sum_balance (голубой) видим, что значение баланса уроков на конец года подходит к значению 4534. Можно предположить, что на конец года осталось много не пройденных уроков. 
-- Необходимо активизировать работу кураторов по привлечению студентов к прохождению купленных уроков. Поскольку они накапливаются, можно сделать вывод, что постепенно обучающиеся студенты недопроходят свои уроки
-- и появлется все большая вероятность, что они так и не будут пройдены и деньги необходимо будет возвращать, что для бизнеса школы не есть хорошо.
-- Мы видим положительный тренд как роста баланса, так и списаний и начислений, что может говорить о развитие школы. 
-- Также необходимо провести дополнительный анализ и расчитать среднее количество уроков в месяц.