SET IDENTITY_INSERT [dbo].[cust_order] ON;

INSERT INTO [dbo].[cust_order]
(
    [order_id],
    [order_date],
    [customer_id],
    [shipping_method_id],
    [dest_address_id]
)
VALUES
    (1, '2026-07-01T09:30:00', 1, 1, 1),
    (2, '2026-07-02T11:15:00', 2, 2, 2),
    (3, '2026-07-03T14:00:00', 3, 3, 3),
    (4, '2026-07-04T16:45:00', 4, 1, 4),
    (5, '2026-07-05T10:20:00', 5, 4, 5);

SET IDENTITY_INSERT [dbo].[cust_order] OFF;
