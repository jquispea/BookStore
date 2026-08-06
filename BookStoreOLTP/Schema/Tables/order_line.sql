CREATE TABLE [dbo].[order_line]
(
	[line_id] INT CONSTRAINT PK_ORDER_LINE PRIMARY KEY,
	[order_id] Int CONSTRAINT FK_CUST_ORDER Foreign Key(order_id) References dbo.cust_order(order_id),
	[book_id] int CONSTRAINT FK_BOOK Foreign Key(book_id) References dbo.book(book_id),
	[price] INT CONSTRAINT CK_ORDER_LINE_PRICE CHECK(price > 0),
	[rowversion] rowversion
)
