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
PRINT 'Populating Customer Order table';
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.cust_order)
BEGIN
    SET IDENTITY_INSERT dbo.cust_order ON;

    INSERT INTO dbo.cust_order
    (
        order_id,
        order_date,
        customer_id,
        shipping_method_id,
        dest_address_id
    )
    VALUES
        (1, '2026-07-01T09:30:00', 1, 1, 1),
        (2, '2026-07-02T11:15:00', 2, 2, 2),
        (3, '2026-07-03T14:00:00', 3, 3, 3),
        (4, '2026-07-04T16:45:00', 4, 1, 4),
        (5, '2026-07-05T10:20:00', 5, 4, 5);

    SET IDENTITY_INSERT dbo.cust_order OFF;

END
GO