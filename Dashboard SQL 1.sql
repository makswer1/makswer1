select *
      , avg (total_payment) over (order by month_year rows between 2 preceding and current row) as MA_3
      , avg (total_payment) over (order by month_year rows between 6 preceding and current row) as MA_7
      , avg (total_payment) over (order by month_year rows between 2 preceding and 2 following) as MA_2side_5
from
    (
    select date_trunc ('month', date_purchase) as month_year
            , sum (amt_payment) as total_payment
    from skycinema.client_sign_up
    group by month_year
    order by month_year asc
    ) t