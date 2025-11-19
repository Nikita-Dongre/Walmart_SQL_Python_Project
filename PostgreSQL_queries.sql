-- BUSINESS PROBLEMS
-- Description: 15 Business Questions & SQL Solutions

-- Q.1
-- Find different payment methods and number of transactions, number of quantity sold 

SELECT 
  payment_method, 
  COUNT(payment_method) AS num_transactions, 
  SUM(quantity) AS total_quantity_sold
FROM walmart
GROUP BY payment_method;

-- Q.2
-- Identify the highest-rated category in each branch, displaying the branch, category avg rating

SELECT *
FROM
(	SELECT branch, category, avg(rating) as avg_rating,
	RANK() OVER(PARTITION BY branch ORDER BY avg(rating) desc) as rank
	FROM walmart
	GROUP BY branch, category
)
WHERE rank = 1;

-- Q.3 
-- Identify the busiest day for each branch based on the number of transactions

SELECT *
FROM 
(	SELECT 
		branch, 
		TRIM(TO_CHAR(TO_DATE(date, 'DD/MM/YY'), 'Day')) as day_name,
		count(*) as no_of_trans,
		RANK() OVER(partition by branch order by count(*) desc) as rank
	FROM walmart
	GROUP BY 1, 2
	order by 1
)
WHERE rank = 1

-- Q.4 
-- Determine the average, minimum, and maximum rating of products for each city, list the city, average_rating, min_rating, and max_rating.

SELECT 
	city, 
	category,
	MAX(rating) as max_rating, 
	MIN(rating) as min_rating,
	AVG(rating) as avg_rating
FROM walmart
GROUP BY city, category
order by city

-- Q.5 
-- Calculate the total profit for each category by considering total_profit as (unit_price * quantity * profit_margin) list category and total_profit, ordered from highest to lowest profit.

SELECT 
	category,
	SUM(quantity * unit_price * profit_margin) AS total_profit
FROM walmart
GROUP BY category
ORDER BY 2 desc

-- Q.6 Determine the most common payment method for each branch. 
-- Display branch and the preferred payment method

SELECT *
FROM
(   SELECT
    branch,
	payment_method,
	count(*) as total_trans,
	rank() over(partition by branch order by count(*) desc) as rank
	FROM walmart
	GROUP BY branch, payment_method
)
WHERE rank = 1

-- Q.7 
-- Categorize sales into 3 group MORNING, AFTERNOON, EVENING. Find out which of the shift and number of invoices

SELECT 
	(CASE
		WHEN EXTRACT (HOUR FROM	(time::TIME)) < 12 THEN 'Morning'
		WHEN EXTRACT (HOUR FROM(time::TIME)) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END) as day_time,
	COUNT(*)
FROM walmart
GROUP BY 1

-- Q.8 
-- Identify 5 branch with highest decrease ratio in revenue compare to last year (current year 2023 and last year 2022)

with revenue_2022 as 
			(SELECT
				branch,
				sum(total) as revenue
			FROM walmart
			WHERE EXTRACT (YEAR FROM(TO_DATE(date, 'DD/MM/YY'))) = 2022
			group by 1
			order by 1
			),
revenue_2023 as 
			(SELECT
				branch,
				sum(total) as revenue
			FROM walmart
			WHERE EXTRACT (YEAR FROM(TO_DATE(date, 'DD/MM/YY'))) = 2023
			group by 1
			order by 1
			)

SELECT 
	ls.branch,
	ls.revenue as last_year_revenue,
	cs.revenue as current_year_revenue,
	ROUND((ls.revenue - cs.revenue)::numeric / NULLIF(ls.revenue, 0)::numeric * 100, 2) as rev_dec
FROM revenue_2022 as ls
JOIN revenue_2023 as cs
ON ls.branch = cs.branch
WHERE ls.revenue > cs.revenue
order by 4 desc
limit 5;

-- Q.9
-- Top 3 Performing Categories Overall

SELECT 
  category,
  SUM(total) AS total_sales
FROM walmart
GROUP BY category
ORDER BY total_sales DESC
LIMIT 3;

-- Q.10 
-- Find Average Profit Margin per Branch

SELECT 
  branch,
  ROUND(AVG(profit_margin)::numeric, 2) AS avg_profit_margin
FROM walmart
GROUP BY branch
ORDER BY avg_profit_margin DESC;

-- Q.11
-- Monthly Revenue Trend for 2023

SELECT 
  TRIM(TO_CHAR(TO_DATE(date, 'DD/MM/YY'), 'Month')) AS month_name,
  EXTRACT(MONTH FROM TO_DATE(date, 'DD/MM/YY')) AS month_number,
  SUM(total) AS monthly_revenue
FROM walmart
WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) = 2023
GROUP BY month_name, month_number
ORDER BY month_number;

-- Q.12 
-- Top 5 Branch with Highest Revenue per Transaction

SELECT 
  branch,
  ROUND(SUM(total)::numeric/COUNT(invoice_id)::numeric, 2) AS avg_revenue_per_transaction
FROM walmart
GROUP BY branch
ORDER BY avg_revenue_per_transaction DESC
Limit 5;

-- Q.13
-- Hourly Sales Trends 

SELECT 
  EXTRACT(HOUR FROM time::TIME) AS hour_of_day,
  COUNT(*) AS num_transactions,
  SUM(total) AS revenue
FROM walmart
GROUP BY 1
ORDER BY 1;

-- Q.14
-- Top Category by Profit in Each City

SELECT *
FROM (
  SELECT 
    city,
    category,
    SUM(quantity * unit_price * profit_margin) AS total_profit,
    RANK() OVER (PARTITION BY city ORDER BY SUM(quantity * unit_price * profit_margin) DESC) AS rank
  FROM walmart
  GROUP BY city, category
) AS ranked
WHERE rank = 1
ORDER BY city;

-- Q.15 
-- Transaction Volume Growth Rate per Branch (Month over Month in 2023)

WITH monthly_trans AS (
  SELECT 
    branch,
    EXTRACT(MONTH FROM TO_DATE(date, 'DD/MM/YY')) AS month,
    COUNT(DISTINCT invoice_id) AS transactions
  FROM walmart
  WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) = 2023
  GROUP BY branch, month
),
growth_calc AS (
  SELECT 
    branch,
    month,
    transactions,
    LAG(transactions) OVER (PARTITION BY branch ORDER BY month) AS prev_month_transactions
  FROM monthly_trans
)
SELECT 
  branch,
  month,
  transactions,
  prev_month_transactions,
  ROUND(
    (transactions - prev_month_transactions)::numeric / NULLIF(prev_month_transactions, 0) * 100,
    2
  ) AS growth_percent
FROM growth_calc
WHERE prev_month_transactions IS NOT NULL
ORDER BY branch, month;
