# docker-dev
Dockerized Development Environment

Prerequisites and Assumptions
-----------------------------
This assumes a *nix like environment, meaning you need:
- SSH set up on your host at `~/.ssh` with a `id_rsa` that is not password protected (for now)
- A `.gitconfig` in `~/.gitconfig`
- Assumes you pull this down into `~/dev/sp` on your host (for now)

Services
--------
This will set up a full development environment in docker with the following services:

- Cloud9 IDE (localhost:8181)
- Ungit Git Client (localhost:8448)
- MongoDB
- Redis
- RabbitMQ
- Elasticsearch

Good-to-Know Docker Compose Commands
------------------------------------
- docker-compose up: Start all the services in the docker-compose environment (create if it doesn't exist).
- docker-compose stop: Stop all the services in the docker-compose environment
- docker-compose down: Stop and *remove* all the services (this will wipe the data too)
