# A Slim Framework application

## Requirements

- [Docker Engine](https://docs.docker.com/engine/installation/) and
  [Docker Compose](https://docs.docker.com/compose/)
- [Composer](https://getcomposer.org/) installed in your global path

## Installation

```bash
$ cd dev
$ composer install
```

## Images and Containers

The images for the application containers are built from the Dockerfiles in
the `docker` directory.

- The [backend image](docker/web/backend/Dockerfile) extends the official
  [`php-fpm`](https://hub.docker.com/_/php/) image.
- The [frontend image](docker/web/frontend/Dockerfile) extends the official
  [`nginx`](https://hub.docker.com/_/nginx/) image.

## Helpers

The Makefile simplifies some basic tasks:

- `make build` builds new Docker images with the current project files being copied
  into the images.
- `make up-dev` will add the settings from [`dev.yml`](dev.yml) to the
  default configuration and start the application with the `web` directory being
  mounted into the containers.
- `make up-prod` will add the settings from [`prod.yml`](prod.yml) to the
  default configuration and start the application
- `make down` will stop the application

Execute `make` or `make help` from the project root to show all available tasks.
