CREATE TABLE [dbo].[shipping_method]
(
	[method_id] INT CONSTRAINT PK_SHIPPING_METHOD PRIMARY KEY,
	[method_name] varchar(100),
	[cost] decimal(6,2),
	[rowversion] rowversion
)