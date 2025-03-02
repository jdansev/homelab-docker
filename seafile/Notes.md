# Seafile with Cloudflare Tunnels

1. Set Cloudflare public hostname: seafile.<Domain>.com --> http://<Local_IP>:<Seafile_Port>

```bash
sudo docker exec -it seafile bash
```

```bash
vi /opt/seafile/conf/seahub_settings.py
```

```py
CSRF_TRUSTED_ORIGINS = ['https://seafile.lejohndary.com']
```
