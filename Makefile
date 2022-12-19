build:
	docker-compose build --no-cache
up:
	docker-compose up -d
setup:
	mkdir ./docker/nginx/logs
	mkdir ./docker/mysql
	@make build
	@make up
stop:
	docker-compose stop
down:
	docker-compose down
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes --remove-orphans
ps:
	docker-compose ps
php:
	docker-compose exec app bash
mysql:
	docker-compose exec mysql bash
migrate:
	docker-compose exec app php artisan migrate
db-seed:
	docker-compose exec app php artisan db:seed
test:
	docker-compose exec app /var/www/vendor/bin/phpunit
help:
	cat Makefile
