FROM nginx:1.28.0

EXPOSE 80
EXPOSE 443

COPY ./nginx_setup.sh /
COPY ./default.conf.template /etc/nginx/templates/
CMD ["bash", "nginx_setup.sh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
