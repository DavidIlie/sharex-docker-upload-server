FROM php:7.4-apache

COPY files/ /var/www/html

RUN mkdir -p /var/www/html/img
RUN chmod -R 077 /var/www/html/img

EXPOSE 80