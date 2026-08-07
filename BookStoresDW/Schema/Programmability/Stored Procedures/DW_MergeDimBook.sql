CREATE PROCEDURE [dbo].[DW_MergeDimBook]
AS
BEGIN

    UPDATE db
        SET Title           = sb.title,
            ISBN13          = sb.isbn13,
            LanguageCode    = sb.language_code,
            LanguageName    = sb.language_name,
            PublisherName   = sb.publisher_name,
            AuthorName      = sb.author_name,
            NumPages        = sb.num_pages,
            PublicationDate = sb.publication_date
        FROM dbo.DimBook db
        INNER JOIN staging.StgBook sb
            ON db.BookID = sb.book_id;


END
GO