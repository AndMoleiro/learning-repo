with
    source as (select * from raw.stripe.payment),

    transform as (
        select
            id as payment_id,
            orderid as order_id,
            status as payment_status,
            round(amount / 100.0, 2) as payment_amount
        from source
    )

select *
from transform