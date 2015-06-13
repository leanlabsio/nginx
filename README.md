# Docker nginx image

[![](https://badge.imagelayers.io/leanlabs/nginx:latest.svg)](https://imagelayers.io/?images=leanlabs/nginx:latest 'Get your own badge on imagelayers.io')

Docker alpine based nginx container

Alpine 3.2

Nginx 1.8.0

### Usage

Image provides 3 volumes where you can mount you configuration files

/etc/nginx/certs - for mountin your SSL certificates

/etc/nginx/site-enabled - for mounting your servers configurations

/etc/nginx/conf.d - for other configs, like upstreams

```bash
docker run -d -p -v `pwd`:/etc/nginx/sites-enabled leanlabs/nginx
```
