all: rebuild

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

shell:
	docker exec -it quiz_app /bin/bash

tail-logs:
	docker logs -f quiz_app

strip_triailing_whitespace:
	docker exec quiz_app scripts/remove-trialing-whitespace.sh

style:
	docker exec quiz_app vendor/bin/phpcs  --colors --standard=mvf-ruleset.xml -n -s

test:
	docker exec quiz_app vendor/bin/codecept run

precommit: strip_triailing_whitespace style test

.PHONY: rebuild kill exec rebuild-app tail-logs tests
