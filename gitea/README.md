### Add SSH public key to Gitea Web UI > SSH / GPG Keys
```bash
# generate a new 4096-bit SSH key pair with RSA encryption
ssh-keygen -t rsa -b 4096
# view ssh public key
cat ~/.ssh/id_rsa.pub
# e.g. push locally
git remote set-url origin ssh://git@192.168.50.245:2222/jdansev/Up-Bank-Cache.git
```
