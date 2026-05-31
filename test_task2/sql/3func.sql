-- возвращает поденные суммы платежей по ClientId и интервалу дат (тип Date).
-- Если за указанный день не было платежей, то функция возвращает 0.
-- Интервалы дат могут охватывать несколько лет.
CREATE FUNCTION client.fn_DailyPaymentsByClient
(
    @ClientId BIGINT,
    @Sd       DATE,
    @Ed       DATE
)
RETURNS @Result TABLE
(
    Dt     DATE,
    Summa  MONEY
)
AS
BEGIN
    ;WITH DateRange AS
    (
        SELECT @Sd AS Dt
        UNION ALL
        SELECT DATEADD(DAY, 1, Dt)
        FROM DateRange
        WHERE Dt < @Ed
    )
    INSERT INTO @Result (Dt, Summa)
    SELECT
        dr.Dt,
        COALESCE(ps.Summa, 0.0) AS Summa
    FROM DateRange AS dr
    LEFT JOIN
    (
        SELECT
            CAST(p.Dt AS DATE) AS Dt,
            SUM(p.Amount) AS Summa
        FROM client.ClientPayments AS p
        WHERE p.ClientId = @ClientId
          AND CAST(p.Dt AS DATE) BETWEEN @Sd AND @Ed
        GROUP BY CAST(p.Dt AS DATE)
    ) AS ps ON dr.Dt = ps.Dt;

    RETURN;
END
GO
