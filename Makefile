run-db:
	docker run --name postgres -e POSTGRES_PASSWORD=secret -p 5432:5432 -d postgres