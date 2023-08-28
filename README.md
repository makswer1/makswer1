# Портфолио: аналитик данных 

## Обо мне 

Привет! Меня зовут Maksim Verhovsky, я начинающий аналитик данных. 
В этом репозитории вы можете найти некоторые из моих проектов, выполненных во время обучения и практики.
<br>

## Навыки и технологии
- Инструменты анализа данных: ``SQL``, ``Excel``: 
- Языки программирования и библиотеки: ``Python``, ``Pandas``, ``math`` 
- Системы управления базами данных: ``MySQL``, ``PostgreSQL``


## Проекты
<p> Проект 1: Калькулятор юнит-экономики онлайн-школы</p>
<p>Что нужно было сделать:<p>
<ol>
  <li>Задача №1: решить задачи, связанные с исследованием аудитории и расчетов метрик, которые помогут вам оценить динамику изменения просмотров на нашей платформе</li>
  <li>Задача №2: решить задачи, связанные с созданием калькулятора юнит-экономики</li>

  <li>Задача №3: решить задачи, связанные с визуализацией результатов анализа данных</li>
  </ol>
<p>Как решал: <aside>
  
*Для понимания картины, рассчитал следующие метрики:*
1. Кол-во подписок в каждый месяц       
2. Кол-во просмотров в каждый месяц  
3. Кол-во уникальных просматривающих пользователей в каждый месяц
4. Дата первого просмотра для каждого юзера
5. Кол-во первых просмотров для пользователя в каждый месяц
6. Среднее кол-во просмотров на одного юзера в каждом месяце
   
*Для создания калькулятора юнит-экономики, рассчитал следующие метрики:*
1. Количество повторных оплат в каждом месяце
2. Retention для каждого месяца
3. Среднее геометрическое Retention    
4. Лайфтайм       
5. LTR 
6. CAC    
7. Маржинальность      

В результате я создал Excel - файл, в котором будут автоматически рассчитываются перечисленные метрики, то есть калькулятор юнит-экономики. 

> <a href="https://github.com/makswer1/Excel/blob/main/%D0%9A%D0%B0%D0%BB%D1%8C%D0%BA%D1%83%D0%BB%D1%8F%D1%82%D0%BE%D1%80%20%D1%8E%D0%BD%D0%B8%D1%82-%D1%8D%D0%BA%D0%BE%D0%BD%D0%BE%D0%BC%D0%B8%D0%BA%D0%B8%20%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD%20%D1%88%D0%BA%D0%BE%D0%BB%D1%8B.xlsx">Ссылка на проект</a>

<p>Выводы (итоги):<p>
<ol>
  <li>Итог №1: На основе анализа предоставленных данных ответил на вопрос, какая динамика пользовательской активности на платформе, опираясь на все рассчитанные метрики. Оформил выводы.</li>
  <li>Итог №2: В результате создал Excel - файл, в котором автоматически рассчитываются перечисленные метрики, то есть калькулятор юнит-экономики.</li>
</ol>
<br> 

<p> Проект 2: Калькулятор юнит-экономики онлайн-кинотеатра</p>
<p>Что нужно было сделать:<p>
<ol>
  <li>Задача №1: Проверить насколько действующая системы эффективна</li>
  <li>Задача №2: Предложить сценарий по настройке параметров для выхода на 25-процентную маржинальность</li>
  <li>Задача №3: Построить калькулятор юнит-экономики онлайн-кинотеатра</li>
</ol>

> <a href="https://docs.google.com/spreadsheets/d/1Io8Wizjcac8uxjCs45k-j5oaU3E7XzlZ/edit?usp=sharing&ouid=114275162980135230202&rtpof=true&sd=true">Ссылка на проект</a>
<b> файл выложен на google docs, в связи с тем, что его объем превышает 25МB, разрешенные репозитарием Git. Рекомендую скачать и просматривать локально через Excel</b>
 
 <p>Выводы (итоги):<p>
<ol>
  <li>Итог №1 Определил, что является юнитом в нашей экономике.</li>
  <li>Итог №2. Посчитал юнит-экономику продукта и предложил сценарий по настройке параметров для выхода на 25%-ную маржинальность.</li>
  <li>Итог №3. Выбрал оптимальный вариант расчета Retention.</li>
  <li>Итог №4. Собрал визуализации основных бизнес-показателей.</li>
  <li>Итог №5. Исследовал данные о пользователях и их поведении.</li>

</ol>
<br> 
<p> Проект 3: Когортный анализ онлайн-кинотеатра с помощью SQL</p>
<p>Что нужно было сделать: Смоделировать изменение балансов студентов. Баланс — это количество уроков, которое есть у каждого студента. 
Чтобы проверить, всё ли в порядке с нашими данными, составить список гипотез и вопросов, нам важно понимать: 
- сколько всего уроков было на балансе всех учеников за каждый календарный день;
- как это количество менялось под влиянием транзакций (оплат, начислений, корректирующих списаний) и уроков (списаний с баланса по мере прохождения уроков).
Также создать таблицу, где будут балансы каждого студента за каждый день.<p>
<ol>
  <li>Задача №1. Выберите топ-1000 строк из CTE `balances` с сортировкой по `user_id` и `dt`. Посмотрите на изменения балансов студентов.
Какие вопросы стоит задавать дата-инженерам и владельцам таблицы payments? </li>
  <li>Задача №2. Создайте визуализацию (линейную диаграмму) итогового результата. Какие выводы можно сделать из получившейся визуализации?</li>
</ol>

><p> Решение по заданию 1<a href="https://github.com/makswer1/makswer1/blob/main/%D0%9A%D0%BE%D0%B3%D0%BE%D1%80%D1%82%D0%BD%D1%8B%D0%B9%20%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%20%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD-%D0%BA%D0%B8%D0%BD%D0%BE%D1%82%D0%B5%D0%B0%D1%82%D1%80%D0%B0%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20SQL%201.sql">Ссылка на проект</a><p>
><p> Решение по заданию 2<a href="https://github.com/makswer1/makswer1/blob/main/%D0%9A%D0%BE%D0%B3%D0%BE%D1%80%D1%82%D0%BD%D1%8B%D0%B9%20%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%20%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD-%D0%BA%D0%B8%D0%BD%D0%BE%D1%82%D0%B5%D0%B0%D1%82%D1%80%D0%B0%20%D1%81%20%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E%20SQL%202.sql">Ссылка на проект</a><p>

  <p>Выводы (итоги):<p>
<ol>
  <li>Итог №1. При сортировке по полю balance видим много отрицательных значений. Это не является нормой. Баланс уроков не может быть отрицательным числом.
Об этом необходимо сообщить дата-инженерам.</li>
  <li>Итог №2. По графику sum_transaction_balance_change (желтый) видим пиковые значения в начале каждого месяца. 
Можно предположить, что студенты получая заработную плату в конце каждого месяца покупают уроки, пополняя баланс.
по графику sum_classes (фиолетовый) пиковые значения приходятся на выходные дни, это говорит о том, что студенты предпочитают проходить обучение именно в эти дни.
по графику sum_balance (голубой) видим, что значение баланса уроков на конец года подходит к значению 4534. Можно предположить, что на конец года осталось много не пройденных уроков. 
Необходимо активизировать работу кураторов по привлечению студентов к прохождению купленных уроков. Поскольку они накапливаются, можно сделать вывод, что постепенно обучающиеся студенты недопроходят свои уроки
и появлется все большая вероятность, что они так и не будут пройдены и деньги необходимо будет возвращать, что для бизнеса школы не есть хорошо.
Мы видим положительный тренд как роста баланса, так и списаний и начислений, что может говорить о развитие школы. 
Также необходимо провести дополнительный анализ и расчитать среднее количество уроков в месяц.</li>
</ol>

<br> 
<p>Проект 4: Построение витрины для модели машинного обучения в банке </p> 
<p>Что нужно было сделать: <p>
<p>Задача 1<p>
<p>Построить распределение выплаченных клиентами денег (amt_payment) по месяцам поля date_purchase (SQL-запрос).
<p>Дополнил запрос так, чтобы получилось три разных скользящих средних (по сумме денег по месяцам):
<p>MA(3) — скользящее среднее, принимающее текущее значение и два предыдущих.
<p>MA(7) — скользящее среднее, принимающее текущее значение и шесть предыдущих.
<p>MA_2side(5) — двустороннее скользящее среднее, принимающее текущее значение, два предыдущих и два следующих.

<p>Задача 2<p>
<p>Специалисты по машинному обучению попросили вас составить витрину для их модели.
<p>Возьмите таблицу skybank.late_collection_clients и напишите скрипт, который сделает витрину со следующими полями:
<p>Внутренний идентификатор клиента — поле id_client.
<p>Название города — поле name_city из таблицы skybank.region_dict.
<p>Числовой признак, который принимает значение 1 для мужчин и 0 для женщин — новое поле nflag_gender на основании поля gender.
<p>Возраст — поле age.
<p>Числовая переменная, которая показывает, в первый ли раз клиент обратился к нам за кредитом, — поле first_time.
<p>Числовой признак, который принимает значение 1 при наличии мобильного телефона и 0 при его отсутствии — новое поле nflag_cellphone на основании поля cellphone.
<p>Числовая переменная, которая показывает, активен ли клиент, — поле is_active;
<p>Номер клиентского сегмента — поле cl_segm.
<p>Размер выданного кредита — поле amt_loan.
<p>Дата выдачи кредита — поле date_loan. Необходимо привести к формату даты.
<p>Тип выданного кредита — поле credit_type.
<p>Суммарный объем кредитов, выданных в этом городе.
<p>Доля данного кредита среди всех кредитов, выданных в этом городе.
<p>Суммарный объем кредитов, выданных в рамках указанного типа кредита.
<p>Доля данного кредита среди всех кредитов, выданных в рамках указанного типа кредита.
<p>Суммарный объем кредитов, выданных в рамках указанного типа кредита и города.
<p>Доля данного кредита среди всех кредитов, выданных в рамках указанного типа кредита и города.
<p>Количество кредитов, выданных в этом городе.
<p>Количество кредитов, выданных в рамках указанного типа кредита.
<p>Количество кредитов, выданных в рамках указанного типа кредита и города.<p>
  
<p>Как решал: краткое описание решения (автореферат)<p>

><p> <a href="https://github.com/makswer1/makswer1/blob/main/Dashboard%20SQL%201.sql"> код задания 1</a>
><p> <a href="https://github.com/makswer1/makswer1/blob/main/Dashboard%20SQL%202.sql"> код задания 2</a> 
><p> <a href="https://docs.google.com/spreadsheets/d/1D67Yu_Ex7Aeh5PUWi4AsaCqhse79M29F/edit?usp=sharing&ouid=114275162980135230202&rtpof=true&sd=true"> визуализация и ссылка на проект</a>
<b> файл выложен на google docs, в связи с тем, что его объем превышает 25МB, разрешенные репозитарием Git. Рекомендую скачать и просматривать локально через Excel</b>
 <p>Выводы (итоги): указаны в приложенной визуализации файла Excel <p>
<br> 

## Контактная информация
- Email: makswer@gmail.com
- LinkedIn: www.linkedin.com/in/makswer
