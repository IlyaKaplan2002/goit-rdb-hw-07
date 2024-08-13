use mydb;

SELECT id, date, year(date) AS year, month(date) AS month, day(date) AS day
FROM orders;

SELECT id, date, date_add(date, INTERVAL 1 day) AS date_plus_one
FROM orders;

SELECT id, date, unix_timestamp(date) AS seconds FROM orders;

SELECT count(*) AS total_orders
FROM orders
WHERE
    date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT id, date, JSON_OBJECT('id', id, 'date', date) AS order_json
FROM orders;