FROM php:7.3.1-apache

RUN pecl install xdebug-2.7.0beta1 && docker-php-ext-enable xdebug \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql

RUN a2enmod rewrite

ENV APACHE_DOCUMENT_ROOT /var/www/vhosts/lamp
RUN mkdir -p $APACHE_DOCUMENT_ROOT
COPY src $APACHE_DOCUMENT_ROOT

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# add vhost
ADD docker/web/apache2/vhosts/000-default.conf /etc/apache2/sites-available/

WORKDIR $APACHE_DOCUMENT_ROOT