CREATE TABLE [dbo].[order_history]
(
	[history_id] INT CONSTRAINT PK_ORDER_HISTORY PRIMARY KEY,
	[order_id] int CONSTRAINT FK_OH_ORDER Foreign Key(order_id) references dbo.cust_order(order_id),
	[status_id] int CONSTRAINT FK_OH_STATUS FOreign key(status_id) references dbo.order_status(status_id),
	[status_date] date,
	[rowversion] rowversion
)
