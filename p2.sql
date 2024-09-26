-- Напишіть SQL запит, який буде відображати таблицю order_details. 
-- Відфільтруйте результати так, щоб відповідний запис із таблиці orders виконував умову shipper_id=3.
-- Це має бути зроблено за допомогою вкладеного запиту в операторі WHERE.

SELECT od.*
FROM order_details od
WHERE order_id IN (SELECT id FROM orders WHERE shipper_id = 3);