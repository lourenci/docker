FROM php:5.6.29-fpm-alpine

RUN apk upgrade --update && apk add \
    freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev libxml2-dev libmcrypt libmcrypt-dev \
    && docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install pdo pdo_mysql soap mcrypt gd

COPY www.conf /usr/local/etc/php-fpm.d/www.conf
