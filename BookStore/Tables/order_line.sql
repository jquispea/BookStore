CREATE TABLE [dbo].[order_line]
(
	[line_id] INT IDENTITY(1,1) CONSTRAINT PK_ORDER_LINE PRIMARY KEY,
	[order_id] int,
	[book_id] int,
	[price] decimal(5,2),
	[rowversion] rowversion,

	CONSTRAINT FK_ORDER_LINE_ORDER 
		FOREIGN KEY(order_id) 
		REFERENCES dbo.cust_order(order_id),

	CONSTRAINT FK_ORDER_LINE_BOOK 
		FOREIGN KEY(book_id) 
		REFERENCES dbo.book(book_id)
)