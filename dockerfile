
FROM php:7.4-apache


RUN apt-get update

RUN apt-get install nano

RUN docker-php-ext-install mysqli

RUN docker-php-ext-enable mysqli

RUN apachectl restart

COPY index.php ./

RUN chmod -R 744 /var/www

RUN chown -R www-data:www-data /var/www

ADD trucorp-db.sql /docker-entrypoint-initdb.d/


EXPOSE 80
