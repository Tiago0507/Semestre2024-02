select quantity, unit_price from order_items
where 
order_id=2
and item_id=4;

select rowid from order_items;

select quantity, unit_price from order_items
where
rowid='AAAS43AANAAAAEmAAk';

select o.order_id, sum(i.quantity*i.unit_price)
from orders o, order_items i
where o.order_id=i.order_id
and o.status='Shipped'
group by o.order_id
order by 2 desc;