select    id_client
        , name_city
        , case when gender = 'M' then 1 else 0 end as nflag_gender
        , age
        , first_time
        , case when cellphone is not null then 1 else 0 end as nflag_cellphone
        , is_active
        , cl_segm
        , amt_loan
        , date_loan::date
        , credit_type
        , sum (amt_loan) over (partition by name_city) total_loan_city
        , amt_loan::float/sum (amt_loan) over (partition by name_city) as share_amt_loan_to_total_loan_city
        , sum (amt_loan) over (partition by credit_type) total_loan_credit_type
        , amt_loan::float/sum (amt_loan) over (partition by credit_type) as share_amt_loan_to_total_loan_credit_type
        , sum (amt_loan) over (partition by credit_type, name_city) total_loan_credit_type_city
        , amt_loan::float/sum (amt_loan) over (partition by credit_type, name_city) as share_amt_loan_to_total_loan_credit_type_city
        , count (*) over (partition by name_city) as cnt_city
        , count (*) over (partition by credit_type) as cnt_credit_type
        , count (*) over (partition by credit_type, name_city) as cnt_type_city
from skybank.late_collection_clients a
        left join skybank.region_dict b on a.id_city = b.id_city
