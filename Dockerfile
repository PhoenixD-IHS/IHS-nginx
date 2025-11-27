FROM nginx:1.28.0-alpine-slim

EXPOSE 80
EXPOSE 443

RUN apk --no-cache add openssl

COPY ./nginx_setup.sh /
COPY ./default.conf.template /etc/nginx/templates/
CMD ["sh", "nginx_setup.sh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
