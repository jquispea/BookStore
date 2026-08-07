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
PRINT 'Populating Publisher table';

SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.publisher)
BEGIN
    INSERT INTO dbo.publisher
    (
        publisher_id,
        publisher_name
    )
    VALUES
        (1, 'Editorial Andina'),
        (2, 'Ediciones del Sur'),
        (3, 'Grupo Lectura'),
        (4, 'Editorial Horizonte'),
        (5, 'Libros del Mundo');
END

GO