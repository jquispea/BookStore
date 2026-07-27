CREATE TABLE [dbo].[customer]
(
	[customer_id] INT CONSTRAINT PK_CUSTOMER PRIMARY KEY,
	[first_name] varchar(200),
	[last_name] varchar(200),
	[email] varchar(350),
	[rowversion] rowversion
)