-- Створіть функцію з двома параметрами, яка буде ділити перший параметр на другий. 
-- Обидва параметри та значення, що повертається, повинні мати тип FLOAT.
-- Використайте конструкцію DROP FUNCTION IF EXISTS. 
-- Застосуйте функцію до атрибута quantity таблиці order_details. 
-- Другим параметром може бути довільне число на ваш розсуд.

DROP FUNCTION IF EXISTS DivideFloatNumbers;

DELIMITER //

CREATE FUNCTION DivideFloatNumbers(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
  IF divisor = 0 THEN
    RETURN NULL;
  ELSE
    RETURN dividend / divisor;
  END IF;
END //

DELIMITER ;

SELECT order_id, quantity, DivideFloatNumbers(quantity, 2) AS result
FROM order_details;