.PHONY: dump boot clean logs

## Dump and zip database
dump:
	docker-compose exec mysql mysqldump wordpress > ./sql/wordpress.sql

## Build and start project
boot: clean
	docker-compose build
	docker-compose up -d

## Kill and remove all containers. Dangerous!!!
clean:
	docker-compose kill
	docker-compose down -v --remove-orphans
	exit 0

## Show logs
logs:
	docker-compose logs -f
