```bash
# Get the Docker host's IP from the container's point of view
sudo docker run -it --rm alpine sh
ip route | grep default
```
