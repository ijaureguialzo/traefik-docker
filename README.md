# Traefik

Prueba de [Traefik](https://traefik.io) en Docker.

## Puesta en marcha

Arrancar los contenedores:

```
make start
```

Acceder al sitio de prueba:

```
curl --header 'Host:test-traefik-docker.docker.localhost' 'http://localhost:80/'
```

O también:

```
curl test-traefik-docker.docker.localhost
```

Acceder al [dashboard](http://localhost:8080) de configuración.

## Referencias

- [Docker Official Image](https://hub.docker.com/_/traefik)
- [Install Traefik](https://doc.traefik.io/traefik/getting-started/install-traefik/#use-the-official-docker-image)
