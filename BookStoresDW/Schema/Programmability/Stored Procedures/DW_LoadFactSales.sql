CREATE PROCEDURE [dbo].[DW_LoadFactSales]
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[FactSales]
    (
        [CustomerKey],
        [BookKey],
        [DateKey],
        [Quantity],
        [Amount]
    )
    SELECT
        dc.CustomerKey,
        db.BookKey,
        dd.DateKey,
        ss.Quantity,
        ss.Amount
    FROM [staging].[StgSales] AS ss
    INNER JOIN [dbo].[DimCustomer] AS dc
        ON dc.CustomerID = ss.CustomerID
    INNER JOIN [dbo].[DimBook] AS db
        ON db.BookID = ss.BookID
    INNER JOIN [dbo].[DimDate] AS dd
        ON dd.FullDate = CAST(ss.OrderDate AS DATE);
END;
