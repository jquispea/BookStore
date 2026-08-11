CREATE PROCEDURE [dbo].[GetSalesChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        co.order_id AS OrderID,
        co.customer_id AS CustomerID,
        ol.book_id AS BookID,
        co.order_date AS OrderDate,
        CAST(1 AS INT) AS Quantity,
        CAST(ol.price AS DECIMAL(10,2)) AS Amount
    FROM dbo.cust_order AS co
    INNER JOIN dbo.order_line AS ol
        ON co.order_id = ol.order_id
    WHERE
        (
            co.rowversion > CONVERT(ROWVERSION, @startRow)
            AND co.rowversion <= CONVERT(ROWVERSION, @endRow)
        )
        OR
        (
            ol.rowversion > CONVERT(ROWVERSION, @startRow)
            AND ol.rowversion <= CONVERT(ROWVERSION, @endRow)
        );
END;
