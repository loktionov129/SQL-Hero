-- Создаём схему client (если ещё нет)
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'client')
BEGIN
    EXEC('CREATE SCHEMA client');
END
GO



-- Таблица платежей
IF OBJECT_ID('client.ClientPayments', 'U') IS NULL
BEGIN
    CREATE TABLE client.ClientPayments
    (
        Id        BIGINT PRIMARY KEY IDENTITY(1,1),
        ClientId  BIGINT NOT NULL,
        Dt        DATETIME2(0) NOT NULL,
        Amount    MONEY NOT NULL
    );
END
GO
