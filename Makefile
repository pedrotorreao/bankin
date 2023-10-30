postgres:
	docker run --name postgres-bankin -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=digai -d postgres:16-alpine

createdb:
	docker exec -it postgres-bankin createdb --username=root --owner=root bankin

dropdb:
	docker exec -it postgres-bankin dropdb bankin

migrateup:
	migrate -path db/migration/ -database "postgresql://root:digai@localhost:5432/bankin?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration/ -database "postgresql://root:digai@localhost:5432/bankin?sslmode=disable" -verbose down

.PHONY: postgres createdb dropdb migrateup migratedown