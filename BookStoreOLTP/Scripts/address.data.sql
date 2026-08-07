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
PRINT 'Populating Address table';
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.address WHERE address_id = 1)
BEGIN
    INSERT INTO dbo.address
    (
        address_id,
        street_number,
        street_name,
        city,
        country_id
    )
    VALUES
        (1, '120', 'Avenida Banzer', 'Santa Cruz', 1),
        (2, '450', 'Calle Libertad', 'La Paz', 1),
        (3, '85', 'Avenida Central', 'Buenos Aires', 2),
        (4, '210', 'Calle Pacifico', 'Santiago', 3),
        (5, '330', 'Avenida Sol', 'Lima', 4);

END