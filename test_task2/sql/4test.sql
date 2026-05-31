-- Результат работы функции №1:
-- Входные данные:
-- • ClientId = 1
-- • Sd = 2022-01-02
-- • Ed = 2022-01-07
SELECT *
FROM client.fn_DailyPaymentsByClient(1, '2022-01-02', '2022-01-07')
ORDER BY Dt;
GO

-- Результат работы функции №2:
-- Входные данные:
-- • ClientId = 2
-- • Sd = 2022-01-04
-- • Ed = 2022-01-11
SELECT *
FROM client.fn_DailyPaymentsByClient(2, '2022-01-04', '2022-01-11')
ORDER BY Dt;
GO