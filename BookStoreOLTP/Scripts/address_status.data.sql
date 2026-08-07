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
PRINT 'Populating AddressStatus table';

SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.address_status)
BEGIN
    INSERT INTO dbo.address_status
    (
        status_id,
        address_status
    )
    VALUES
        (1, 'Active'),
        (2, 'Inactive');
END

GO