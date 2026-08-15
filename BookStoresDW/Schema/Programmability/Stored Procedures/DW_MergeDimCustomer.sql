CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN

    UPDATE dc
        SET FirstName = sc.FirstName,
            LastName  = sc.LastName,
            Email     = sc.Email,
            Country   = sc.CountryName
    FROM dbo.DimCustomer dc
    INNER JOIN staging.StgCustomer sc
        ON dc.CustomerID = sc.CustomerID;

END
GO