ARG PHP_VERSION

FROM php:${PHP_VERSION}-apache

COPY virtual-hosts.conf /etc/apache2/sites-available/

RUN a2enmod rewrite

RUN a2ensite virtual-hosts.conf

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo_mysql;

#RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
#	&& pecl install memcached-3.1.4 \
#	&& docker-php-ext-enable memcached;

#RUN apt-get -y update \
#&& apt-get install -y libicu-dev\
#&& docker-php-ext-configure intl \
#&& docker-php-ext-install intl

EXPOSE 80 443
