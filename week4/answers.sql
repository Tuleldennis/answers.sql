-- Question 1
-- Show total payment amount for each payment date
-- Sorted by payment date in descending order, limited to top 5 dates
SELECT 
    paymentDate,
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;

-- Question 2
-- Find the average credit limit of each customer
-- Grouped by customer name and country
SELECT 
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customerName, country;

-- Question 3
-- Calculate total price for products ordered
-- Assuming each product's total = priceEach * quantityOrdered
SELECT 
    productCode,
    quantityOrdered,
    SUM(priceEach * quantityOrdered) AS total_price
FROM 
    orderdetails
GROUP BY 
    productCode, quantityOrdered;

-- Question 4
-- Get the highest payment amount for each check number
SELECT 
    checkNumber,
    MAX(amount) AS highest_amount
FROM 
    payments
GROUP BY 
    checkNumber;
