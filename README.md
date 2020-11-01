# SQL-Hero
(Udemy) Become an expert at SQL!

## Setup

```
# Host
docker cp $(pwd)/dvdrental.tar heropgsql:/app/
docker cp $(pwd)/exercises.tar heropgsql:/app/

# Inside a heropgsql container
pg_restore -c -U hero -d dvdrental -v "/app/dvdrental.tar" -W
pg_restore -c -U hero -d exercises -v "/app/exercises.tar" -W
```
