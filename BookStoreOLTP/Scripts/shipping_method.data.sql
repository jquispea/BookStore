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
PRINT 'Populating ShippingMethod table';

SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.shipping_method)
BEGIN
    INSERT INTO dbo.shipping_method
    (
        method_id,
        method_name,
        cost
    )
    VALUES
        (1, 'Standard', 5.90),
        (2, 'Priority', 8.90),
        (3, 'Express', 11.90),
        (4, 'International', 24.50);
END

GO