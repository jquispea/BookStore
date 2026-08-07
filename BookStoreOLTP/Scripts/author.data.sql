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
PRINT 'Populating Author table';
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.author WHERE author_id = 1)
BEGIN
    INSERT INTO dbo.author
    (
        author_id,
        author_name
    )
    VALUES
        (1, 'Ana Torres'),
        (2, 'Carlos Mendoza'),
        (3, 'Lucia Fernandez'),
        (4, 'Miguel Rojas'),
        (5, 'Sofia Vargas');
END
GO
