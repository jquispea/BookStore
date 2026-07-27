CREATE TABLE [dbo].[order_status]
(
	[status_id] INT CONSTRAINT PK_ORDER_STATUS PRIMARY KEY,
	[status_value] varchar(20),
	[rowversion] rowversion
)