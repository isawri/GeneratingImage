up:
	docker-compose up --build -d

down:
	docker-compose down

logs:
	docker-compose logs -f --tail=100

ps:
	docker-compose ps

restart:
	docker-compose down && docker-compose up --build -d

migrate:
	docker-compose exec backend python manage.py migrate

createsuperuser:
	docker-compose exec backend python manage.py createsuperuser
