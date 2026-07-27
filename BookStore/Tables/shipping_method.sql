CREATE TABLE [dbo].[shipping_method]
(
	[method_id] INT Constraint PK_SHIPPING_METHOD PRIMARY KEY,
	[method_name] varchar(50), 
	[cost] int constraint CK_SHIPPING_METHOD check(cost<0),
	[rowversion] rowversion
)

