CREATE TABLE [dbo].[customer_address]
(
	[customer_id] int CONSTRAINT FK_C_A_CUSTOMER foreign key(customer_id) references dbo.customer(customer_id),
	[address_id] int CONSTRAINT FK_C_A_ADDRESS foreign key(address_id) references dbo.address(address_id) ,
	[status_id] int CONSTRAINT FK_C_A_STATUS FOreign Key(status_id) references dbo.address_status(status_id),
	[rowversion] rowversion,
	CONSTRAINT PK_CUSTOMER_ADDRESS PRIMARY KEY (customer_id, address_id)

)
