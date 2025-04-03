```bash
# Get the Docker host's IP from the container's point of view
sudo docker run -it --rm alpine sh
ip route | grep default
```

### Error: No SSH Key file found
- Make sure contents of ".ssh/autossh_id_rsa.pub" are in remote's ".ssh/authorized_keys" file
```bash
cat .ssh/autossh_id_rsa.pub
ssh-keygen -t rsa -b 4096 -C "autossh" -f autossh_id_rsa
```
