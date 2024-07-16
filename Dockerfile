FROM php:8.1.0-apache

RUN a2enmod rewrite

ADD ./seopanel/ /var/www/html/




