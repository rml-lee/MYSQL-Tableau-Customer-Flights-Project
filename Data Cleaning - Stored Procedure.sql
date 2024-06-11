DELIMITER $$
CREATE PROCEDURE clean_data()
BEGIN

                                        # customer_flight_activity table

# There are two date related columns: month (INT) and year (INT)

-- Let's make a date column formatted in '%Y-%m'
ALTER TABLE customer_flight_activity
ADD COLUMN date DATE;


-- Update date column
UPDATE customer_flight_activity
SET
    date = STR_TO_DATE(CONCAT(year, '-', LPAD(month, 2, '0'), '-01'), '%Y-%m-%d');


-- Drop Year and Month columns from customer_flight_activity table
ALTER TABLE customer_flight_activity
DROP COLUMN year,
DROP COLUMN month;




                                        # customer_loyalty_history table

-- Create enrollment_date and cancellation_date in customer_loyalty_history table
ALTER TABLE customer_loyalty_history
ADD COLUMN enrollment_date   DATE,
ADD COLUMN cancellation_date DATE;


-- Set to new column enrollment_date while updating column format
UPDATE customer_loyalty_history
SET
    enrollment_date = STR_TO_DATE(CONCAT(enrollment_year, '-', LPAD(enrollment_month, 2, '0'), '-01'), '%Y-%m-%d');



-- Set to new column cancellation_date while updating column format
UPDATE customer_loyalty_history
SET
    cancellation_date = STR_TO_DATE(CONCAT(cancellation_year, '-', LPAD(cancellation_month, 2, '0'), '-01'), '%Y-%m-%d');



-- Drop cancellation_year and cancellation_month columns
ALTER TABLE customer_loyalty_history
DROP COLUMN cancellation_year,
DROP COLUMN cancellation_month;

ALTER TABLE customer_loyalty_history
DROP COLUMN enrollment_year,
DROP COLUMN enrollment_month;

END $$

DELIMITER ;