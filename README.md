# Dekalabs Ningx Docker Image

Docker image for `nginx` used as a proxy for projects made by Dekalabs.

## Docker-compose example

Example of a `docker-compose.yml` file that uses this image:

  version: '3'

  services:

    service:
      image: registry.dekaside.com/service/service:latest
      command: ./start

    ningx:
      build:
        context: .
        dockerfile: ./Dockerfile
      environment:
        - NGINX_UPSTREAM_APP=app
        - NGINX_UPSTREAM_SERVER=service
        - NGINX_UPSTREAM_PORT=5000
        - NGINX_PORT=80
        - NGINX_HOST=localhost
        - NGINX_MAX_BODY_SIZE=20M
