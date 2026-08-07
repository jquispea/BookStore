CREATE TABLE [staging].[StgBook]
(
    [book_id] INT NOT NULL,

    [title] VARCHAR(400) NULL,

    [isbn13] VARCHAR(20) NULL,

    [language_code] VARCHAR(10) NULL,

    [language_name] VARCHAR(100) NULL,

    [publisher_name] VARCHAR(200) NULL,

    [author_name] VARCHAR(200) NULL,

    [num_pages] INT NULL,

    [publication_date] DATE NULL,

    CONSTRAINT [PK_StgBook]
        PRIMARY KEY CLUSTERED ([book_id] ASC)
);
GO