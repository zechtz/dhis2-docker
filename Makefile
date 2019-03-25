build:
	docker-compose -f docker-compose.yml up -d --build

empty:
	docker-compose -f docker-compose-empty-db.yml up -d

bash:
	docker-compose run web bash

psql:
	docker-compose run database psql -U dhis -h database -d dhis

logs:
	docker-compose logs -f

stop:
	docker-compose down -v

restore:
	docker-compose exec database psql -U dhis -d database -d dhis < $(filename)

pgrestore:
	#docker-compose exec pg_restore -c -F t -f $(filename) -U dhis -d dhis
	docker-compose exec database pg_restore --verbose --clean --no-acl --no-owner -h database -U dhis -d dhis $(path)
