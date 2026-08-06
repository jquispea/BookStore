CREATE TABLE DimBook
(
    BookKey INT IDENTITY PRIMARY KEY,
    BookID INT,
    Title VARCHAR(400),
    AuthorName VARCHAR(400),
    PublisherName VARCHAR(400),
    LanguageName VARCHAR(50)
);