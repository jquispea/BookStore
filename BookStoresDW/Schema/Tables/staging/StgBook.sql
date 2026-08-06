CREATE TABLE staging.StgBook
(
    BookID INT,
    Title VARCHAR(400),
    ISBN13 VARCHAR(13),
    LanguageName VARCHAR(50),
    PublisherName VARCHAR(400),
    AuthorName VARCHAR(400),
    NumPages INT,
    PublicationDate DATE,
    LoadDate DATETIME DEFAULT GETDATE()
);
GO