FROM php:8.2-apache

# Instalimi i PDO për MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Kopjo skedarët në /var/www/html
COPY ./index.php /var/www/html/index.php
COPY ./api.php /var/www/html/api.php
COPY ./assets/ /var/www/html/assets/
COPY ./app/src/ /var/www/html/src/

EXPOSE 80
