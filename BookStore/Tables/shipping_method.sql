CREATE TABLE [dbo].[shipping_method]
(
<<<<<<< HEAD
	[method_id] INT CONSTRAINT PK_SHIPPING_METHOD PRIMARY KEY,
	[method_name] varchar(100),
	[cost] decimal(6,2),
	[rowversion] rowversion
)
=======
	[method_id] INT Constraint PK_SHIPPING_METHOD PRIMARY KEY,
	[method_name] varchar(50), 
	[cost] int constraint CK_SHIPPING_METHOD check(cost<0),
	[rowversion] rowversion
)

>>>>>>> 46e57f6e161cb65ccc49e25e234b5d61b0591a89
