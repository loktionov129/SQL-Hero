# test_task2


## Запуск контейнеров
```sh
docker compose up -d
```

## Зайти в контейнер
```sh
docker exec -it tt2tools bash
```

## Инициализация (создание схемы + таблицы платежей)
```sh
sqlcmd -S tt2mssql,1433 -U SA -P 'V3ry23C93tp422w0Rd!' -i /sql/1init.sql
```

## Сид (наполнение таблицы платежей)
```sh
sqlcmd -S tt2mssql,1433 -U SA -P 'V3ry23C93tp422w0Rd!' -i /sql/1init.sql
```

## Функция (код client.fn_DailyPaymentsByClient)
```sh
sqlcmd -S tt2mssql,1433 -U SA -P 'V3ry23C93tp422w0Rd!' -i /sql/1init.sql
```

## Тесты (тестовые вызовы функции client.fn_DailyPaymentsByClient)
```sh
sqlcmd -S tt2mssql,1433 -U SA -P 'V3ry23C93tp422w0Rd!' -i /sql/1init.sql
```

---

## Интерактивный запуск sqlcmd
```sh
sqlcmd -S tt2mssql,1433 -U SA -P 'V3ry23C93tp422w0Rd!'
```
