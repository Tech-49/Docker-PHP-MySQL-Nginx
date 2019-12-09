FROM php:7.3-fpm

RUN apt-get update && apt-get install -y git zip unzip
RUN docker-php-ext-install mysqli pdo pdo_mysql
    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
