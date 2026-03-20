

--- show table
SELECT 
    *
FROM
    orders_data;

describe orders_data;



--- totals sales    is 6900 is total sales
SELECT 
    SUM(sales) AS total_sales
FROM
    orders_data;



--- sales by each city   pune has 1800 sales mumbai has 3100 of sales and delhi has a 2000 of sales
SELECT 
    city, SUM(sales) AS Total_sales
FROM
    orders_data
GROUP BY city;



--- sales by category   furniture has 1800 sales ,technology has 4700 highest sales , office 400 lowwest sales
SELECT 
    category, SUM(sales) AS Total_sales
FROM
    orders_data
GROUP BY category;



--- top city by sales  top sales by mumbai city , 2nd top delhi and  3 was pune
SELECT 
    city, SUM(sales) AS total_sales
FROM
    orders_data
GROUP BY city
ORDER BY SUM(sales) DESC;
 
 
 
--- average sales per city   mumbais avg are the high 
SELECT 
    city, AVG(sales) AS total_sales
FROM
    orders_data
GROUP BY city;



--- top category by sales  techology is the highest profit making category and the office making lowest profits

SELECT 
    category, SUM(Sales) AS total_sales
FROM
    orders_data
GROUP BY category
ORDER BY SUM(sales) DESC;




--- cities with high sales >1000 all three cities has cross the sales of 1000 

SELECT 
    city, SUM(sales) AS total_sales
FROM
    orders_data
GROUP BY city
HAVING SUM(sales) > 1000;








