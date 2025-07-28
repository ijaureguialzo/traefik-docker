#!make

help: _header
	${info }
	@echo Opciones:
	@echo ------------------------
	@echo start / stop / restart
	@echo ------------------------
	@echo password
	@echo ------------------------
	@echo stats / logs
	@echo clean
	@echo ------------------------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo ----------------------------------
	@echo [Traefik] http://localhost:8080
	@echo ----------------------------------

_header:
	@echo -----------------
	@echo Traefik en Docker
	@echo -----------------

_start-command:
	@docker compose -f docker-compose.yml -f docker-compose.dashboard.yml up -d --remove-orphans

start: _start-command _urls

stop:
	@docker compose stop

restart: stop start

password:
	@echo $$(htpasswd -nB username) | sed -e s/\\$$/\\$$\\$$/g

stats:
	@docker stats

logs:
	@docker compose logs traefik

clean:
	@docker compose down -v --remove-orphans
