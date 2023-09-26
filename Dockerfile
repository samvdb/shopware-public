FROM alpine:3.14
COPY . /var/www
WORKDIR /var/www
RUN chmod -R 644 /var/www/public
