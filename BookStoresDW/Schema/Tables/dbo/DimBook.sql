CREATE TABLE dbo.DimBook
(
    BookKey INT IDENTITY(1,1) NOT NULL,

    BookID INT NOT NULL,

    Title VARCHAR(400) NULL,

    ISBN13 VARCHAR(20) NULL,

    LanguageCode VARCHAR(10) NULL,

    LanguageName VARCHAR(100) NULL,

    PublisherName VARCHAR(200) NULL,

    AuthorName VARCHAR(200) NULL,

    NumPages INT NULL,

    PublicationDate DATE NULL,

    LoadDate DATETIME NOT NULL
        CONSTRAINT DF_DimBook_LoadDate DEFAULT(GETDATE()),

    CONSTRAINT PK_DimBook
        PRIMARY KEY CLUSTERED (BookKey)
);
GO