select 
    o.id as order_id,
    o.user_id as customer_id,
    p.amount/100 as f_amount
from {{source("jaffle_shop",'orders')}} as o
    join {{source("stripe",'payment')}} as p 
        on O.id = P.orderid 