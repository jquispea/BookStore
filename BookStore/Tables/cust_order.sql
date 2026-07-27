CREATE TABLE [dbo].[cust_order]
(
<<<<<<< HEAD
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
=======
	[order_id] INT CONSTRAINT PK_CUST_ORDER PRIMARY KEY,
	[order_date] date,
	[customer_id] int CONSTRAINT FK_CUSTOMER Foreign key(customer_id) references dbo.customer(customer_id),
	[shipping_method_id] int COnstraint FK_SHIPPING_METHOD Foreign key(shipping_method_id) references dbo.shipping_method(method_id),
	[dest_address_id] int COnstraint FK_DEST_ADDRESS Foreign KEy(dest_address_id) references dbo.address(address_id),
	[rowversion] rowversion
)
>>>>>>> 46e57f6e161cb65ccc49e25e234b5d61b0591a89
