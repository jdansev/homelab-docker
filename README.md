# homelab-docker

```bash
sudo docker compose --env-file ../.env up -d
sudo docker compose --env-file ../.env down
```

```bash
# list all volumes
sudo docker volume ls

# remove volume
sudo docker volume rm <volume_name>
```

```bash
# print size stats
sudo docker system df --verbose
sudo docker ps --size
sudo docker stats
```

```bash
# pretty print assigned port
sudo docker inspect --format '{{ .NetworkSettings.Ports }}' <container_name>
```

```bash
sudo docker images # list docker images
```

```bash
# build Dockerfile
sudo docker compose
# run compose file
sudo docker compose up
```

```bash
# start shell in running docker container
sudo docker exec -it --user <username> <container_name> /bin/bash
```
