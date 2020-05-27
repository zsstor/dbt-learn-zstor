with payments as (
    select * from {{ ref('stg_payments') }}
)

select
    id,
    order_id,
    sum(amount) as amount
from payments
group by 1, 2