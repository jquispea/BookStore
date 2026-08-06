CREATE TABLE [dbo].[author]
(
	[author_id] INT CONSTRAINT PK_AUTHOR PRIMARY KEY,
	[author_name] varchar(50),
	[rowversion] rowversion

)
