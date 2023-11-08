This is a simplified banking application for learning backend stuff.

## docker

- Pull an image:

General syntax: `docker pull <image_name>:<tag>`

Example: `docker pull postgres:16-alpine`

- List available images: `docker images`

- List containers:

  - currently running: `docker ps`
  - all: `docker ps -a`

- Create an instance: `docker run --name <container-name> -e <environment_variable> -p <host_port:container_port> -d <image_name>:<tag>`

- Stop a container: `docker stop <container-name/id>`

- Start a container: `docker start <container-name/id>`

- Remove a container: `docker rm <container-name/id>`

- Run command in container: `docker exec -it <container_name_or_id> <command> [args]`

  - Example:
    - Accessing the shell inside the container: `docker exec -it my_container /bin/sh`
    - To exit the shell: `exit`

- View container logs: `docker logs <container_name_or_id>`

## postgres

- Download image through docker: `docker pull postgres`, to download the latest version of postgres image.

- Start a postgres instance: `docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres`

- Create a db: `docker exec -it <container-name> createdb --username=root --owner=root <db-name>`

### resources

- [tool for drawing db diagrams](https://dbdiagram.io)
- [golang migrate](https://github.com/golang-migrate/migrate/tree/master)

### references

- [how to use the postgres docker official image](https://www.docker.com/blog/how-to-use-the-postgres-docker-official-image/)
