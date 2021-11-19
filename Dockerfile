FROM php:7.4-cli-alpine

LABEL manteiner="Luis Leal<31942862+luisfelipe3d@users.noreply.github.com>" \
      version="1.0"

COPY --from=composer:2.1 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html/

ENTRYPOINT [ "docker-php-entrypoint"]
CMD ["-S", "0.0.0.0:8000"]

EXPOSE 8000