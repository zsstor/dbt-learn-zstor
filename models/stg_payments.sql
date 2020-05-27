select
    id as payment_id,
    "orderID" as order_id,
    amount
from {{source('stripe','payment')}}