# Slim Framework Skeleton for Docker

A dockerized [Slim Framework skeleton](https://github.com/slimphp/Slim-Skeleton) application as
a starting point for now Slim Framework projects.

## Requirements

- [Docker Engine](https://docs.docker.com/engine/installation/) and
  [Docker Compose](https://docs.docker.com/compose/)
- [Composer](https://getcomposer.org/) installed in your global path

## Installation

Create a new project from this starter with

```bash
$ composer create-project kreait/slim-docker target-directory
```

The actual Slim Framework application will be located in `target-directory/web`.

Then, start up the dockerized application:

```bash
$ cd target-directory
$ docker-compose up
```

## Images and Containers

The images for the application containers are built from the Dockerfiles in
the `docker` directory so that you can modify them as needed for your
application.

- The [packend image](docker/web/backend/Dockerfile) extends the official
  [`nginx`](https://hub.docker.com/_/nginx/) image.
- The [frontend image](docker/web/backend/Dockerfile) extends the official
  [`php-fpm`](https://hub.docker.com/_/php/) image.

## Helpers

The starter includes a Makefile to simplify the basic tasks:

- `make build` builds new Docker images with the current project files being copied
  into the images.
- `make up-dev` will add the settings from [`dev.yml`](dev.yml) to the
  default configuration and start the application with the `web` directory being
  mounted into the containers.
- `make up-prod` will add the settings from [`prod.yml`](prod.yml) to the
  default configuration and start the application
- `make down` will stop the application

Execute `make` or `make help` from the project root to show all available tasks.
