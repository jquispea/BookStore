CREATE TABLE staging.StgCustomer
(
    CustomerID INT,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    Email VARCHAR(350),
    CountryName VARCHAR(200),
    LoadDate DATETIME DEFAULT GETDATE()
);
GO