SELECT * FROM orders
ORDER BY required_date DESC, shipped_date ASC;
--
SELECT AVG(shipped_date-order_date)::int FROM orders
WHERE ship_country='USA' AND shipped_date  IS NOT NULL;
--
SELECT sum(order_details.unit_price*order_details.quantity)::int FROM orders
JOIN order_details ON order_details.order_id = orders.order_id
JOIN products ON products.product_id = order_details.product_id AND products.discontinued = 0
 