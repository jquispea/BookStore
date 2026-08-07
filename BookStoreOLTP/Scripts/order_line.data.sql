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
PRINT 'Populating OrderLine table';

SET NOCOUNT ON;

-- IMPORTANTE:
-- Antes de ejecutar este INSERT, corrija en Tables/order_line.sql:
-- CHECK(price < 0) por CHECK(price > 0)

IF NOT EXISTS (SELECT 1 FROM dbo.order_line)
BEGIN
    INSERT INTO dbo.order_line
    (
        line_id,
        order_id,
        book_id,
        price
    )
    VALUES
        (1, 1, 1, 120),
        (2, 1, 3, 180),
        (3, 2, 2, 150),
        (4, 3, 4, 135),
        (5, 4, 5, 110),
        (6, 5, 1, 120);
END

GO