-- Розв’яжіть завдання 3, використовуючи оператор WITH для створення тимчасової таблиці temp. 
-- Якщо ваша версія MySQL більш рання, ніж 8.0, створіть цей запит за аналогією до того, як це зроблено в конспекті.
WITH orders_quantity AS (
	SELECT order_id, quantity 
    FROM order_details 
    WHERE quantity > 10
)
SELECT order_id, AVG(quantity)
FROM orders_quantity
GROUP by order_id;