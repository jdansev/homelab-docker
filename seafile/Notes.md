# Seafile with Cloudflare Tunnels

[https://www.reddit.com/r/selfhosted/comments/1efiim6/help_with_seafile_config_for_cloudflare_tunnels/](https://www.reddit.com/r/selfhosted/comments/1efiim6/help_with_seafile_config_for_cloudflare_tunnels/)

1. Set Cloudflare public hostname: seafile.lejohndary.com --> http://<Local_IP>:<Seafile_Port>

2. Run shell on seafile container
```bash
sudo docker exec -it seafile bash
```

3. Edit seahub_settings.py
```bash
vi /opt/seafile/conf/seahub_settings.py
```

4. Add this line to the end
```py
CSRF_TRUSTED_ORIGINS = ['https://seafile.lejohndary.com']
```
