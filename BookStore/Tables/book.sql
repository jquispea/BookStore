CREATE TABLE [dbo].[book]
(
	[book_id] INT CONSTRAINT PK_BOOK PRIMARY KEY,
	[title] varchar(50) Not Null ,
	[isbn13] varchar(20) UNIQUE,
	[language_id] int CONSTRAINT FK_BOOK_LANGUAGE Foreign Key(language_id) References dbo.book_language(language_id),
	[num_pages] int COnstraint CK_ESTUDIANTE check(num_pages<0),
	[publication_date] date,
	[publisher_id] int CONSTRAINT FK_BOOK_PUBLISHER Foreign key(publisher_id) References dbo.publisher(publisher_id),
	[rowversion] rowversion
)


