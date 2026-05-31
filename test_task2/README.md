# test_task2


## Запуск контейнеров
```sh
docker compose up
```

---

## logs
```logs
tt2tools  | SQL Server готов
tt2tools  | 1. Инициализация (создание схемы + таблицы платежей)...
tt2tools  | 2. Сид (наполнение таблицы платежей)...
tt2tools  | 
tt2tools  | (6 rows affected)
tt2tools  | 3. Функция (код client.fn_DailyPaymentsByClient)...
tt2tools  | 4. Тесты (тестовые вызовы функции client.fn_DailyPaymentsByClient)...
tt2tools  | Dt               Сумма                
tt2tools  | ---------------- ---------------------
tt2tools  |       2022-01-02                 .0000
tt2tools  |       2022-01-03              100.0000
tt2tools  |       2022-01-04                 .0000
tt2tools  |       2022-01-05              450.0000
tt2tools  |       2022-01-06                 .0000
tt2tools  |       2022-01-07               50.0000
tt2tools  | 
tt2tools  | (6 rows affected)
tt2tools  | Dt               Сумма                
tt2tools  | ---------------- ---------------------
tt2tools  |       2022-01-04                 .0000
tt2tools  |       2022-01-05              278.0000
tt2tools  |       2022-01-06                 .0000
tt2tools  |       2022-01-07                 .0000
tt2tools  |       2022-01-08                 .0000
tt2tools  |       2022-01-09                 .0000
tt2tools  |       2022-01-10              300.0000
tt2tools  |       2022-01-11                 .0000
tt2tools  | 
tt2tools  | (8 rows affected)
tt2tools  | Готово
```