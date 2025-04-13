-- average selling price per unit type
SELECT unit_type, AVG(selling_price) AS average_price
FROM real_estate_sales
GROUP BY unit_type;

-- total sales amount and the number of sales for each agent
SELECT sales_agent, COUNT(*) AS number_of_sales, SUM(selling_price) AS total_sales
FROM real_estate_sales
GROUP BY sales_agent;

-- retrieve all transactions from the last 30 days
SELECT * FROM real_estate_sales
WHERE sale_date >= DATEADD(DAY, -30, GETDATE());

--  total sales amount by location and sort the results in descending order
SELECT location, SUM(selling_price) AS total_sales
FROM real_estate_sales
GROUP BY location
ORDER BY total_sales DESC;

-- projects with more than 10 transactions and the average selling price for each project
SELECT project_name, COUNT(*) AS transaction_count, AVG(selling_price) AS average_price
FROM real_estate_sales
GROUP BY project_name
HAVING COUNT(*) > 10;

--  top 3 highest selling prices for each unit type
SELECT unit_type, transaction_id, selling_price
FROM (
    SELECT unit_type, transaction_id, selling_price,
           RANK() OVER (PARTITION BY unit_type ORDER BY selling_price DESC) AS rank
    FROM real_estate_sales
) AS ranked_sales
WHERE rank <= 3;

-- total sales amount and average selling price for each payment mode
SELECT payment_mode, SUM(selling_price) AS total_sales, AVG(selling_price) AS average_price
FROM real_estate_sales
GROUP BY payment_mode
HAVING COUNT(*) > 5;  -- Assuming you want to filter payment modes with more than 5 transactions

-- sales agent who made the highest total sales in a specific year
SELECT TOP 1 sales_agent, SUM(selling_price) AS total_sales
FROM real_estate_sales
WHERE YEAR(sale_date) = 2024
GROUP BY sales_agent
ORDER BY total_sales DESC;


-- average selling price for each project in each location, 
-- and projects where the average price is higher than the overall average price
WITH avg_project_price AS (
    SELECT project_name, location, AVG(selling_price) AS project_avg_price
    FROM real_estate_sales
    GROUP BY project_name, location
),
avg_overall_price AS (
    SELECT AVG(selling_price) AS overall_avg_price
    FROM real_estate_sales
)
SELECT p.project_name, p.location, p.project_avg_price, o.overall_avg_price
FROM avg_project_price p, avg_overall_price o
WHERE p.project_avg_price > o.overall_avg_price;

--  top-selling projects by unit type in each location (ranked by total sales)
SELECT location, unit_type, project_name, SUM(selling_price) AS total_sales
FROM real_estate_sales
GROUP BY location, unit_type, project_name
ORDER BY location, unit_type, total_sales DESC;




