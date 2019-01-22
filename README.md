# docker-dev
Dockerized Development Environment

Quick Start
-----------
Just `docker-compose up`

If you want a Cloud9 environment: `git checkout 239e5da`

Prerequisites and Assumptions
-----------------------------
- Install Docker
    - [Docker for Mac](https://www.docker.com/products/docker#/mac) (or windows if you're into that sort thing)
    - Alternatively on Mac; `brew cask install docker`>

Services
--------
This will set up a full development environment in docker with the following services:

- MongoDB
- Redis
- RabbitMQ

Good-to-Know Docker Compose Commands
------------------------------------
- `docker-compose up`: Start all the services in the docker-compose environment (create if it doesn't exist).
- `docker-compose stop`: Stop all the services in the docker-compose environment
- `docker-compose down`: Stop and *remove* all the services (this will wipe the data too)
