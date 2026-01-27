
select * from [coffe_sales].[dbo].[coffee_sales];
-- Q.1 How many records are present in the coffee sales dataset?

 select count(*) as Total_data from coffee_sales;

-- Q.2 What columns and data types exist in the dataset?

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'coffee_sales';

-- Q.3 Change the all columns names to professional names

EXEC sp_rename 'coffee_sales.date', 'transaction_date', 'COLUMN';
EXEC sp_rename 'coffee_sales.datetime', 'transaction_datetime', 'COLUMN';
EXEC sp_rename 'coffee_sales.cash_type', 'transaction_type', 'COLUMN';
EXEC sp_rename 'coffee_sales.card', 'card_id', 'COLUMN';
EXEC sp_rename 'coffee_sales.coffee_name', 'coffee_name', 'COLUMN';
EXEC sp_rename 'coffee_sales.money', 'price', 'COLUMN';

select * from coffee_sales;

-- Q.4 Are there any missing (NULL) values in important columns?

SELECT
    SUM(CASE WHEN transaction_date IS NULL THEN 1 ELSE 0 END) AS missing_date,
    SUM(CASE WHEN coffee_name IS NULL THEN 1 ELSE 0 END) AS missing_product,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN card_id IS NULL THEN 1 ELSE 0 END) AS missing_card_id, -- this case maybe we get 0 values when costumer use cash
    SUM(CASE WHEN transaction_datetime IS NULL THEN 1 ELSE 0 END) AS missing_date_time,
    SUM(CASE WHEN transaction_type IS NULL THEN 1 ELSE 0 END) AS missing_transaction_type
FROM coffee_sales;

-- Q.5 How were NULL values handled in the card_id column for cash payment transactions to ensure data consistency and accurate analysis?

UPDATE coffee_sales
SET card_id = 'cash payment'
WHERE transaction_type = 'cash'
  AND card_id IS NULL;

select * from coffee_sales;

select 
    SUM(CASE WHEN card_id IS NULL THEN 1 ELSE 0 END) AS missing_card_id
    from coffee_sales;

-- Q.6 Are there duplicate transactions in the dataset?

SELECT 'transaction_date' AS column_name,
       COUNT(*) - COUNT(DISTINCT transaction_date) AS duplicate_count        -- Many transactions happen on the same day
FROM coffee_sales

UNION ALL

SELECT 'transaction_datetime',
       COUNT(*) - COUNT(DISTINCT transaction_datetime)        -- Every transaction happened at a unique date + time
FROM coffee_sales

UNION ALL

SELECT 'card_id',
       COUNT(*) - COUNT(DISTINCT card_id)                   -- Customers used their card multiple times
FROM coffee_sales

-- Q.7 How many duplicate records exist for the same transaction?

SELECT * FROM COFFEE_SALES
SELECT
    transaction_date,
    card_id,
    COUNT(*) AS purchase_count          -- same day same id reapeate purchase
FROM coffee_sales
WHERE card_id <> 'cash payment'
GROUP BY transaction_date, card_id
HAVING COUNT(*) > 1
ORDER BY purchase_count DESC;

-- Q.8 Are there any records with zero or negative price values?

select * from coffee_sales
SELECT count(price) Negative_price_data
FROM coffee_sales
WHERE price <= 0;


-- Q.9 Is the transaction date stored in the correct date format?

ALTER TABLE coffee_sales
ALTER COLUMN transaction_date VARCHAR(10);

UPDATE coffee_sales
SET transaction_date =
    CONVERT(VARCHAR(10), CONVERT(DATE, transaction_date), 105);

select transaction_date from coffee_sales;

-- Q.10 Are there any invalid or future dates in the dataset?

SELECT count(*) as future_date_count
FROM coffee_sales
WHERE TRY_CONVERT(DATE, transaction_date, 105)
      > TRY_CONVERT(DATE, '31-07-2024', 105);


-- Q.11 Are product names consistent across all records?


SELECT 
    coffee_name,
    COUNT(*) AS occurrence_count                -- yess all product names are consistent and no spelling mistake & no unwanted characters
FROM coffee_sales
GROUP BY coffee_name
ORDER BY occurrence_count DESC;


-- Q.12 Are customer IDs missing or incorrectly recorded?

select * from coffee_sales;

SELECT 
    COUNT(*) AS missing_or_invalid_customer_id
FROM coffee_sales
WHERE card_id IS NULL
   OR card_id = '';

-- Q.13 Are sales values realistic and within an expected range?

SELECT count(*) as unexpected_range_data
FROM coffee_sales
WHERE price <= 0
   OR price > 1000;

-- Q.14 Is the cleaned dataset ready for analysis and forecasting?


SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT TRY_CONVERT(DATE, transaction_date, 105)) AS valid_transaction_dates,
    SUM(CASE WHEN coffee_name IS NULL THEN 1 ELSE 0 END) AS missing_product_name,
    SUM(CASE WHEN price IS NULL OR price <= 0 THEN 1 ELSE 0 END) AS invalid_price,
    SUM(CASE WHEN transaction_type IS NULL THEN 1 ELSE 0 END) AS missing_transaction_type
FROM coffee_sales;
