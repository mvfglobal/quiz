rebuild:
	docker-compose down
	docker-compose build
	docker-compose up -d
	docker exec quiz_app composer install

rebuild-app:
	docker-compose stop app
	docker-compose up --build -d app

kill:
	docker-compose kill

exec:
	docker exec -it quiz_app /bin/bash

tail-logs:
	docker logs -f quiz_app

.PHONY: rebuild kill exec rebuild-app  tail-logs
