CREATE TABLE [dbo].[book_author]
(
    [book_id] INT CONSTRAINT FK_BOOK_AUTHOR_BOOK FOREIGN KEY REFERENCES dbo.book(book_id),

    [author_id] INT CONSTRAINT FK_BOOK_AUTHOR_AUTHOR FOREIGN KEY REFERENCES dbo.author(author_id),

    [rowversion] ROWVERSION,

    CONSTRAINT PK_BOOK_AUTHOR PRIMARY KEY(book_id, author_id)
);