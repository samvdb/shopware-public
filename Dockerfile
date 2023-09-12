FROM gitlab.myvink.be:5005/vink/docker-php:php-8.1-node-16.13.2-cli-latest


#USER sw6

#ADD --chown=sw6 . .


RUN apk add --no-cache rsync

COPY deployments/docker/app/docker-entrypoint.sh /usr/local/bin/docker-app-entrypoint
RUN chmod +x /usr/local/bin/docker-app-entrypoint

COPY . /var/www
WORKDIR /var/www
RUN chmod -R 644 /var/www/public
#RUN chown -R sw6.sw6 /var/www

CMD ["docker-app-entrypoint"]
