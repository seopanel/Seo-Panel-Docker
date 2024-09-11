FROM php:8.1.0-apache

RUN a2enmod rewrite

# Install necessary PHP extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli pdo pdo_mysql
	
# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container
COPY ./seopanel /var/www/html/

# Set the correct permissions
RUN chown -R www-data:www-data /var/www/html
RUN chmod 666 /var/www/html/config/sp-config.php
RUN chmod -R 777 /var/www/html/tmp/

# Restart Apache to apply changes
RUN service apache2 restart
