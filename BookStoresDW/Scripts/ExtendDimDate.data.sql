DECLARE @startdate DATE;
DECLARE @enddate DATE = '2027-12-31';

SELECT @startdate = DATEADD(DAY, 1, MAX(FullDate))
FROM dbo.DimDate
WHERE DateKey <> 0;

IF @startdate IS NULL
    SET @startdate = '2016-01-01';

WHILE @startdate <= @enddate
BEGIN
    IF NOT EXISTS
    (
        SELECT 1
        FROM dbo.DimDate
        WHERE FullDate = @startdate
          AND DateKey <> 0
    )
    BEGIN
        INSERT INTO dbo.DimDate
        (
            DateKey,
            FullDate,
            DayNumberOfWeek,
            DayNameOfWeek,
            DayNumberOfMonth,
            DayNumberOfYear,
            WeekNumberOfYear,
            MonthName,
            MonthNumberOfYear,
            CalendarQuarter,
            CalendarYear,
            CalendarSemester
        )
        VALUES
        (
            CONVERT(INT, CONVERT(VARCHAR(8), @startdate, 112)),
            @startdate,
            DATEPART(WEEKDAY, @startdate),
            DATENAME(WEEKDAY, @startdate),
            DAY(@startdate),
            DATEPART(DAYOFYEAR, @startdate),
            DATEPART(WEEK, @startdate),
            DATENAME(MONTH, @startdate),
            MONTH(@startdate),
            DATEPART(QUARTER, @startdate),
            YEAR(@startdate),
            CASE
                WHEN DATEPART(QUARTER, @startdate) IN (1,2) THEN 1
                ELSE 2
            END
        );
    END;

    SET @startdate = DATEADD(DAY, 1, @startdate);
END;
GO