CREATE TABLE [dbo].[publisher]
(
	[publisher_id] INT constraint PK_PUBLISHER PRIMARY KEY,
	[publisher_name] varchar(50),
	[rowversion] rowversion

)
