FROM php:8.2-apache

# Ativar extensões necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar todo o conteúdo do projeto para o Apache
COPY . /var/www/html/

# Dar permissão
RUN chown -R www-data:www-data /var/www/html
