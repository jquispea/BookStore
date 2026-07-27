CREATE TABLE [dbo].[country]
(
	[country_id] INT CONSTRAINT PK_COUNTRY PRIMARY KEY,
	[country_name] varchar(200),
	[rowversion] rowversion
)