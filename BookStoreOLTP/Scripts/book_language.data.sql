/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
PRINT 'Populating BookLanguage table';
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.book_language)
BEGIN
    INSERT INTO dbo.book_language
    (
        language_id,
        language_code,
        language_name
    )
    VALUES
        (1, 'spa', 'Spanish'),
        (2, 'eng', 'English'),
        (3, 'por', 'Portuguese'),
        (4, 'fre', 'French'),
        (5, 'ger', 'German');
END
GO