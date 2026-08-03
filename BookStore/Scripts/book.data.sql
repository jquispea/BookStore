INSERT INTO [dbo].[book]
(
    [book_id],
    [title],
    [isbn13],
    [language_id],
    [num_pages],
    [publication_date],
    [publisher_id]
)
VALUES
    (1, 'Introduccion a SQL', '9780000000001', 1, 280, '2022-03-15', 1),
    (2, 'Gestion Industrial', '9780000000002', 1, 350, '2021-07-10', 2),
    (3, 'Business Intelligence', '9780000000003', 2, 420, '2023-01-20', 3),
    (4, 'Analisis de Datos', '9780000000004', 1, 310, '2024-05-05', 4),
    (5, 'Comercio Internacional', '9780000000005', 3, 260, '2020-11-12', 5);
