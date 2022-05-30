DECLARE @model_year SMALLINT;

SET @model_year = 2018;

SELECT
    product_name,
    model_year,
    list_price
FROM
    production.products
WHERE
    model_year = @model_year
ORDER BY
    product_name;


DECLARE @product_count INT;

SET @product_count = (
    -- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
    SELECT COUNT(*) 
    FROM
        production.products
);

PRINT @product_count

PRINT 'Th number of product is' + CAST(@product_count AS VARCHAR(MAX))

SELECT @product_count;

