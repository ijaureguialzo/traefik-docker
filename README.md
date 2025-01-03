# Traefik

Prueba de [Traefik](https://traefik.io) en Docker.

## Puesta en marcha

Arrancar los contenedores:

```
make start
```

Acceder al sitio de prueba:

```
curl --header 'Host:whoami.test' 'http://localhost:80/'
```

O también:

```
curl whoami.test
```

Acceder al [dashboard](http://localhost:8080) de configuración.

## Referencias

- [Docker Official Image](https://hub.docker.com/_/traefik)
- [Quick Start](https://doc.traefik.io/traefik/getting-started/quick-start/)
