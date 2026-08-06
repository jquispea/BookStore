CREATE TABLE DimCustomer
(
    CustomerKey INT IDENTITY PRIMARY KEY,
    CustomerID INT,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    Email VARCHAR(350),
    Country VARCHAR(200)
);