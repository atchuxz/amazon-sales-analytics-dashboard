USE amazon_sales;
DROP TABLE IF EXISTS sales;
SELECT * FROM amazon_sales_cleaned_final;

SELECT COUNT(*) AS Total_Orders
FROM amazon_sales_cleaned_final;

SELECT Status, COUNT(*) AS Total
FROM amazon_sales_cleaned_final
GROUP BY Status
ORDER BY Total DESC;

SELECT Category, COUNT(*) AS Total_Sales
FROM amazon_sales_cleaned_final
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Size, COUNT(*) AS Total
FROM amazon_sales_cleaned_final
GROUP BY Size
ORDER BY Total DESC;

SELECT Fulfilment, COUNT(*) AS Total
FROM amazon_sales_cleaned_final
GROUP BY Fulfilment;

SELECT `Sales Channel`, COUNT(*) AS Total
FROM amazon_sales_cleaned_final
GROUP BY `Sales Channel`;

SELECT *
FROM amazon_sales_cleaned_final
WHERE Category IS NULL
   OR Size IS NULL
   OR Status IS NULL;
   
   