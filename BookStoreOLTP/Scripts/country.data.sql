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
PRINT 'Populating Country table';
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.country)
BEGIN
    INSERT INTO dbo.country
    (
        country_id,
        country_name
    )
    VALUES
        (1, 'Bolivia'),
        (2, 'Argentina'),
        (3, 'Chile'),
        (4, 'Peru'),
        (5, 'Brazil');
END
GO