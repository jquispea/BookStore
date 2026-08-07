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
PRINT 'Populating OrderHistory table';
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.order_history)
BEGIN
    INSERT INTO dbo.order_history
    (
        history_id,
        order_id,
        status_id,
        status_date
    )
    VALUES
        (1, 1, 1, '2026-07-01'),
        (2, 1, 4, '2026-07-03'),
        (3, 2, 1, '2026-07-02'),
        (4, 2, 3, '2026-07-03'),
        (5, 3, 1, '2026-07-03'),
        (6, 3, 5, '2026-07-04'),
        (7, 4, 1, '2026-07-04'),
        (8, 4, 2, '2026-07-05'),
        (9, 5, 1, '2026-07-05'),
        (10, 5, 6, '2026-07-08');
END
GO