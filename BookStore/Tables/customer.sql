CREATE TABLE [dbo].[customer]
(
	[customer_id] INT Constraint PK_CUSTOMER PRIMARY KEY,
	[first_name] varchar(20),
	[last_name] varchar(30),
	[email] varchar(50),
	[rowversion] rowversion

)
