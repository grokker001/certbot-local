# Build Docker image
```
docker build . -t certbot-local:0.1
```
# Run command to create certs

```
docker run --rm -i -v /etc/letsencrypt:/etc/letsencrypt certbot-local:0.1 certonly --manual --preferred-challenges=dns --email <EMAIL_ADDRESS> --server https://acme-v02.api.letsencrypt.org/directory --agree-tos -d <DOMAIN_NAME>
```