CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        c.email,
        a.street_name,
        a.street_number,
        a.city,
        ads.address_status,
        co.country_name
    FROM dbo.customer AS c
        INNER JOIN dbo.customer_address AS ca
            ON c.customer_id = ca.customer_id
        INNER JOIN dbo.address_status AS ads
            ON ca.status_id = ads.status_id
        INNER JOIN dbo.address AS a
            ON ca.address_id = a.address_id
        INNER JOIN dbo.country AS co
            ON a.country_id = co.country_id
    WHERE
        (c.rowversion > CONVERT(ROWVERSION, @startRow)
         AND c.rowversion <= CONVERT(ROWVERSION, @endRow))
        OR
        (ca.rowversion > CONVERT(ROWVERSION, @startRow)
         AND ca.rowversion <= CONVERT(ROWVERSION, @endRow))
        OR
        (ads.rowversion > CONVERT(ROWVERSION, @startRow)
         AND ads.rowversion <= CONVERT(ROWVERSION, @endRow))
        OR
        (a.rowversion > CONVERT(ROWVERSION, @startRow)
         AND a.rowversion <= CONVERT(ROWVERSION, @endRow))
        OR
        (co.rowversion > CONVERT(ROWVERSION, @startRow)
         AND co.rowversion <= CONVERT(ROWVERSION, @endRow));
END;
GO