FROM nginx:latest

MAINTAINER Denis-Florin Rendler <docker@rendler.me>

ADD default.conf /etc/nginx/conf.d
ADD nginx.conf /etc/nginx/
#COPY sites/* /etc/nginx/sites-available/

# configure the project vhost, optionaly add defaults
ENV NGX_DOLLAR $
ENV NGX_SERVER_NAME ${NGX_SERVER_NAME:-project.dev}
ENV NGX_ROOT_DIR ${NGX_ROOT_DIR:-/www/project}
ENV NGX_INDEX_PHP ${NGX_INDEX_PHP:-index.php}

RUN echo "upstream php-upstream { server php-fpm:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
