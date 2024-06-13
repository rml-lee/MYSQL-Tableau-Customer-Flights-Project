# Customer Loyalty Program Project

# Data Cleaning

# Call Stored Procedure

CALL clean_data();

## There are no formal dates in this dataset. All analysis will be related to Years & Months!! ##

# ---------------------------------------------------------------------------------------------------------------

# Descriptive Statistics

-- View distinct list of Enrollment Types
SELECT DISTINCT
    enrollment_type
FROM
    customer_loyalty_history;


-- Customer Loyalty History - Year Range
SELECT DISTINCT
    YEAR(enrollment_date) AS year
FROM
    customer_loyalty_history
ORDER BY 1 ASC;
-- Result: 2012 - 2018


-- Customer Flight Activity - Year Range
SELECT DISTINCT
    YEAR(date) AS year
FROM
    customer_flight_activity;
-- Result: 2017 - 2018

-- 2018 Promotion time range
SELECT DISTINCT
    MONTH(enrollment_date) AS months
FROM
    customer_loyalty_history
WHERE
    enrollment_type = '2018 Promotion'
ORDER BY 1 ASC;
-- Result: Months 2 - 4 (Feb. - Apr.)


# ---------------------------------------------------------------------------------------------------------------

# Data Analysis

-- 1. What were the most popular loyalty cards during the 2018 promotion?
SELECT
    loyalty_card,
    COUNT(*) AS total_customers
FROM
    customer_loyalty_history
WHERE
    enrollment_type = '2018 Promotion'
GROUP BY 1
ORDER BY 2 DESC;



-- 2. What is the total amount of enrollment and cancellations between loyalty cards with a 2018 promotion enrollment type?
SELECT
    loyalty_card,
    IF(cancellation_date IS NULL, 'Active', 'Inactive') AS status,
    COUNT(*) AS total_entries
FROM
    customer_loyalty_history
WHERE
    enrollment_type = '2018 Promotion'
GROUP BY 1, 2
ORDER BY 1 ASC;



-- 3. How has enrollment by gender changed over the years?
SELECT
    YEAR(enrollment_date) AS year,
    gender,
    COUNT(*) AS total_enrollment
FROM
    customer_loyalty_history
GROUP BY 1, 2
ORDER BY 1 ASC;



-- 4. What effect did the 2018 promotion have on the amount of enrollment compared to previous years?
-- Measure the performance of the 2018 promotion (Feb. - Apr.) compared to previous years.
SELECT
    DATE_FORMAT(enrollment_date, '%Y-%m') AS year,
    COUNT(*) AS amount_enrolled
FROM
    customer_loyalty_history
WHERE
      MONTH(enrollment_date) BETWEEN 2 AND 4
  AND YEAR(enrollment_date) BETWEEN 2013 AND 2018
GROUP BY 1
ORDER BY 1 ASC;



-- 5. List the customers who enrolled into a loyalty program and dropped within 1 month of enrollment during 2015.
SELECT
    loyalty_number,
    enrollment_date,
    cancellation_date
FROM
    customer_loyalty_history
WHERE
      YEAR(enrollment_date) = 2015
  AND (TIMESTAMPDIFF(MONTH, enrollment_date, cancellation_date) BETWEEN 0 AND 1
  AND cancellation_date IS NOT NULL);



-- 6. Which city's average booking amount exceeded the national average?
WITH nat_avg AS
         (SELECT
              ROUND(AVG(flights_booked), 0) AS avg_booked
          FROM
              customer_flight_activity)
SELECT
    h.city
FROM
    customer_loyalty_history h
    JOIN customer_flight_activity a
    ON h.loyalty_number = a.loyalty_number
GROUP BY 1
HAVING
    AVG(a.flights_booked) > (SELECT avg_booked FROM nat_avg)
ORDER BY 1 ASC;



-- 7. Which customers traveled the furthest?
SELECT
    *
FROM
    customer_loyalty_history
WHERE
    loyalty_number IN
    (SELECT
         loyalty_number
     FROM
         customer_flight_activity
     WHERE
         distance = (SELECT MAX(distance) FROM customer_flight_activity))
ORDER BY 4 DESC;



-- 8. What is the enrollment distribution percentage of Loyalty Cards?
SELECT
    loyalty_card,
    COUNT(loyalty_card) AS card_count,
    ROUND((COUNT(loyalty_card) / (SELECT COUNT(*) FROM customer_loyalty_history)) * 100, 0) AS enrollment_distribution_percentage
FROM
    customer_loyalty_history
GROUP BY 1;



-- 9. What was the percentage of monthly aurora card enrollments during the 2018 promotion?
WITH promo AS
         (SELECT
              *
          FROM
              customer_loyalty_history
          WHERE
              enrollment_type = '2018 Promotion'),

     aurora_promo AS
         (SELECT
              *
          FROM
              customer_loyalty_history
          WHERE
                enrollment_type = '2018 Promotion'
            AND loyalty_card = 'Aurora')
SELECT
    MONTH(p.enrollment_date) AS month,
    (COUNT(a.loyalty_number) / COUNT(p.loyalty_number)) * 100 AS aurora_percentage
FROM
    promo p
    LEFT JOIN aurora_promo a
    ON a.loyalty_number = p.loyalty_number
GROUP BY 1
ORDER BY 1 ASC;



-- 10. Which cities had the largest growth and drop in volume of enrollments between Feb. and Mar. of the 2018 promotion?
WITH cte AS
         (SELECT
              MONTH(enrollment_date) AS month,
              city,
              COUNT(enrollment_date) AS total,
              COUNT(enrollment_date) -
              LAG(COUNT(enrollment_date)) OVER (PARTITION BY city ORDER BY MONTH(enrollment_date) ASC) AS amt_diff
          FROM
              customer_loyalty_history
          WHERE
                YEAR(enrollment_date) = 2018
            AND MONTH(enrollment_date) IN (02, 03)
          GROUP BY 1, 2)
SELECT
    city,
    amt_diff
FROM
    cte
WHERE
     amt_diff = (SELECT MAX(amt_diff) FROM cte)
  OR amt_diff = (SELECT MIN(amt_diff) FROM cte);



-- 11. What was the quarterly Churn Rate during 2018?

-- Common Table Expression (CTE) for calculating churn rate by quarter
WITH quarterly_data AS
    (SELECT
        2018 AS 'year',
        'Q1' AS 'quarter',
        COUNT(*) AS enrolled_at_start_of_quarter,
        SUM(IF(cancellation_date BETWEEN '2018-01-01' AND '2018-03-31', 1, 0)) AS canceled_in_quarter
    FROM
        customer_loyalty_history
    WHERE
        enrollment_date <= '2018-01-01'
    UNION ALL
    SELECT
        2018 AS 'year',
        'Q2' AS 'quarter',
        COUNT(*) AS enrolled_at_start_of_quarter,
        SUM(IF(cancellation_date BETWEEN '2018-04-01' AND '2018-06-30', 1, 0)) AS canceled_in_quarter
    FROM
        customer_loyalty_history
    WHERE
        enrollment_date <= '2018-04-01'
    UNION ALL
    SELECT
        2018 AS 'year',
        'Q3' AS 'quarter',
        COUNT(*) AS enrolled_at_start_of_quarter,
        SUM(IF(cancellation_date BETWEEN '2018-07-01' AND '2018-09-30', 1, 0)) AS canceled_in_quarter
    FROM
        customer_loyalty_history
    WHERE
        enrollment_date <= '2018-07-01'
    UNION ALL
    SELECT
        2018 AS 'year',
        'Q4' AS 'quarter',
        COUNT(*) AS enrolled_at_start_of_quarter,
        SUM(IF(cancellation_date BETWEEN '2018-10-01' AND '2018-12-31', 1, 0)) AS canceled_in_quarter
    FROM
        customer_loyalty_history
    WHERE
        enrollment_date <= '2018-10-01')
-- Final SELECT statement to calculate the churn rate
SELECT
    year,
    quarter,
    enrolled_at_start_of_quarter,
    canceled_in_quarter,
    (canceled_in_quarter / enrolled_at_start_of_quarter) * 100 AS churn_rate
FROM
    quarterly_data;
