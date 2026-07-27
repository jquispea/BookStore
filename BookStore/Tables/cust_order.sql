CREATE TABLE [dbo].[cust_order]
(
	[order_id] INT CONSTRAINT PK_CUST_ORDER PRIMARY KEY,
	[order_date] date,
	[customer_id] int CONSTRAINT FK_CUSTOMER Foreign key(customer_id) references dbo.customer(customer_id),
	[shipping_method_id] int COnstraint FK_SHIPPING_METHOD Foreign key(shipping_method_id) references dbo.shipping_method(method_id),
	[dest_address_id] int COnstraint FK_DEST_ADDRESS Foreign KEy(dest_address_id) references dbo.address(address_id),
	[rowversion] rowversion
)
