#!/bin/bash

set -xe

#rm -rf var/cache/*
#php bin/console do:ca:clear-metadata
php bin/console cache:warmup
php bin/console theme:dump
php bin/console theme:compile
#php bin/console http:cache:warm:up


mkdir -p var/log
chmod -R 755 var/log

chmod -R 755 public
chown -R www-data:www-data var
#chown -R www-data:www-data config/jwt
mkdir -p public/media
mkdir -p public/js
mkdir -p public/sitemap
mkdir -p public/thumbnail
mkdir -p public/fonts
mkdir -p public/css
chown -R www-data:www-data public/media
chmod -R 775 public/media

printf "Finished running entrypoints..\n"
#PIPELINE_ID=`cat .gitlab-pipeline`
#printf "Currently running code from pipeline $PIPELINE_ID."

exec "$@"
