SELECT * FROM ecommers_return.orders;

select * from orders;
SELECT 
    category,
    COUNT(CASE WHEN returned='Yes' THEN 1 END)*100.0/COUNT(*) AS return_rate
FROM orders
GROUP BY category;

SELECT 
    supplier,
    COUNT(CASE WHEN returned='Yes' THEN 1 END) AS total_returns
FROM orders
GROUP BY supplier;

SELECT 
    region,
    COUNT(CASE WHEN returned='Yes' THEN 1 END) AS return_count
FROM orders
GROUP BY region;


SELECT 
    marketing_channel,
    COUNT(CASE WHEN returned='Yes' THEN 1 END) AS returns_count
FROM orders
GROUP BY marketing_channel;

