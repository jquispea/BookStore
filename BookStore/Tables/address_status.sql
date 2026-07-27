CREATE TABLE [dbo].[address_status]
(
	[status_id] INT Constraint PK_ADDRESS_STATUS PRIMARY KEY,
	[address_status] varchar(30),
	[rowversion] rowversion
)
