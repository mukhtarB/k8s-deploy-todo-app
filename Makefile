all:
	#
build-up:
	docker compose -f containerization/docker-compose.yml --env-file .env up --build -d
up:
	docker compose -f containerization/docker-compose.yml up -d
down:
	docker compose -f containerization/docker-compose.yml down
clean: down
	docker compose -f containerization/docker-compose.yml down -v
	rm -rf node_modules/ 
config:
	docker compose -f containerization/docker-compose.yml config

