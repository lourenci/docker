FROM php:7.1.5-cli

RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

WORKDIR /tmp

RUN curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar && \
    cp phpcs.phar /usr/local/bin/phpcs && \
    chmod +x /usr/local/bin/phpcs

RUN curl -OL http://static.phpmd.org/php/latest/phpmd.phar && \
    cp phpmd.phar /usr/local/bin/phpmd && \
    chmod +x /usr/local/bin/phpmd
