CREATE TABLE [dbo].[book_language]
(
	[language_id] INT constraint PK_BOOK_LANGUAGE PRIMARY KEY,
	[language_code] varchar(10),
	[language_name] varchar(50),
	[rowversion] rowversion
)
