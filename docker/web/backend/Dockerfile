FROM php:7.0-fpm-alpine

COPY web /var/www/html

RUN rm -rf /var/www/html/logs/* \
    && chown -R www-data:www-data /var/www/html

