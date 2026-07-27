CREATE TABLE [dbo].[order_history]
(
	[history_id] INT IDENTITY(1,1) CONSTRAINT PK_ORDER_HISTORY PRIMARY KEY,
	[order_id] int,
	[status_id] int,
	[status_date] datetime,
	[rowversion] rowversion,

	CONSTRAINT FK_ORDER_HISTORY_ORDER 
		FOREIGN KEY(order_id) 
		REFERENCES dbo.cust_order(order_id),

	CONSTRAINT FK_ORDER_HISTORY_STATUS 
		FOREIGN KEY(status_id) 
		REFERENCES dbo.order_status(status_id)
)