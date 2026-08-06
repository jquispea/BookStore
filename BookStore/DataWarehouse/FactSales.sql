CREATE TABLE FactSales
(
    SalesKey INT IDENTITY PRIMARY KEY,
    CustomerKey INT,
    BookKey INT,
    DateKey INT,
    Quantity INT,
    Amount DECIMAL(10,2)
);