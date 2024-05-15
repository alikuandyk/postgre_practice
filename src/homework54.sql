SELECT orders.orderid as orderid, customers.customerid, orders.totalamount
from customers
JOIN orders ON customers.customerid = orders.customerid
WHERE orders.totalamount = (SELECT max(o.totalamount) from orders o WHERE o.customerid = customers.customerid);

SELECT customers.firstname, customers.lastname
FROM customers
WHERE not exists (SELECT 1 FROM orders WHERE orders.customerid = customers.customerid);

SELECT customers.age as age, avg(orders.totalamount) AS average_order_mount
FROM orders
JOIN customers ON orders.customerid = customers.customerid
WHERE extract(DOW from orders.orderdate) = 5
GROUP BY age
ORDER BY age;

-- последнюю заданию не понял как сделать, спросил у гпт
SELECT AVG(age) AS average_age
FROM customers
WHERE EXTRACT(QUARTER FROM CURRENT_DATE) = 2;