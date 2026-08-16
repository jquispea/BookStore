CREATE TABLE DimShippingMethod
(
    ShippingMethodKey INT IDENTITY(1,1) NOT NULL,
    method_id INT NOT NULL,
    method_name VARCHAR(100) NOT NULL,
    cost DECIMAL(10,2) NOT NULL,

    CONSTRAINT PK_DimShippingMethod
        PRIMARY KEY (ShippingMethodKey)
);