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
PRINT 'Populating OrderStatus table';

SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.order_status)
BEGIN
    INSERT INTO dbo.order_status
    (
        status_id,
        status_value
    )
    VALUES
        (1, 'Order Received'),
        (2, 'Pending Delivery'),
        (3, 'Delivery In Progress'),
        (4, 'Delivered'),
        (5, 'Cancelled'),
        (6, 'Returned');
END

GO