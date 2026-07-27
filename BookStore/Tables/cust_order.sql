CREATE TABLE [dbo].[cust_order]
(
	[order_id] INT IDENTITY(1,1) CONSTRAINT PK_CUST_ORDER PRIMARY KEY,
	[order_date] datetime,
	[customer_id] int,
	[shipping_method_id] int,
	[dest_address_id] int,
	[rowversion] rowversion,

	CONSTRAINT FK_CUST_ORDER_CUSTOMER 
		FOREIGN KEY(customer_id) 
		REFERENCES dbo.customer(customer_id),

	CONSTRAINT FK_CUST_ORDER_SHIPPING_METHOD 
		FOREIGN KEY(shipping_method_id) 
		REFERENCES dbo.shipping_method(method_id),

	CONSTRAINT FK_CUST_ORDER_ADDRESS 
		FOREIGN KEY(dest_address_id) 
		REFERENCES dbo.address(address_id)
)

