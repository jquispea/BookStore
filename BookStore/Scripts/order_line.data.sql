-- IMPORTANTE:
-- Antes de ejecutar este INSERT, corrija en Tables/order_line.sql:
-- CHECK(price < 0)  por  CHECK(price > 0)

INSERT INTO [dbo].[order_line]
(
    [line_id],
    [order_id],
    [book_id],
    [price]
)
VALUES
    (1, 1, 1, 120),
    (2, 1, 3, 180),
    (3, 2, 2, 150),
    (4, 3, 4, 135),
    (5, 4, 5, 110),
    (6, 5, 1, 120);
