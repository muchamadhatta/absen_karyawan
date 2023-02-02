FROM nginx:1.21.4-alpine

ADD ./docker-config/nginx/vhost.conf /etc/nginx/conf.d/default.conf