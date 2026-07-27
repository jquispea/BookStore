CREATE TABLE [dbo].[customer_address]
(
<<<<<<< HEAD
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
=======
	[customer_id] int CONSTRAINT FK_C_A_CUSTOMER foreign key(customer_id) references dbo.customer(customer_id),
	[address_id] int CONSTRAINT FK_C_A_ADDRESS foreign key(address_id) references dbo.address(address_id) ,
	[status_id] int CONSTRAINT FK_C_A_STATUS FOreign Key(status_id) references dbo.address_status(status_id),
	[rowversion] rowversion,
	CONSTRAINT PK_CUSTOMER_ADDRESS PRIMARY KEY (customer_id, address_id)

)
>>>>>>> 46e57f6e161cb65ccc49e25e234b5d61b0591a89
