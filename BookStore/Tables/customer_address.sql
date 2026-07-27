CREATE TABLE [dbo].[customer_address]
(
	[customer_id] INT,
	[address_id] INT,
	[status_id] INT,
	[rowversion] rowversion,

	CONSTRAINT PK_CUSTOMER_ADDRESS PRIMARY KEY(customer_id, address_id),

	CONSTRAINT FK_CUSTOMER_ADDRESS_CUSTOMER 
		FOREIGN KEY(customer_id) 
		REFERENCES dbo.customer(customer_id),

	CONSTRAINT FK_CUSTOMER_ADDRESS_ADDRESS 
		FOREIGN KEY(address_id) 
		REFERENCES dbo.address(address_id),

	CONSTRAINT FK_CUSTOMER_ADDRESS_STATUS 
		FOREIGN KEY(status_id) 
		REFERENCES dbo.address_status(status_id)
)