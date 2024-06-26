# IHS-nginx
Slightly modified version of the [nginx Docker container](https://hub.docker.com/_/nginx/) used for the [Institutshaushaltssystem](https://github.com/PhoenixD-IHS/IHS).

It provides a configuration template that is converted to a configuration during the start of the container. The configuration is a reverse proxy for the [zope container](https://github.com/PhoenixD-IHS/IHS-zope) and phpmyadmin.

Additionally, it generates a self-signed SSL certificate during the start of the container if none is provided.

The most recent image can be downloaded from [DockerHub](https://hub.docker.com/r/svenkleinert/pxd-ihs-nginx) via:
```bash
docker pull svenkleinert/pxd-ihs-nginx:latest
```
