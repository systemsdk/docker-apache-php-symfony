#!/bin/bash -x

if [ "$APP_ENV" == "dev" ] || [ "$APP_ENV" == "test" ]; then
    #pecl install xdebug - enable it when Xdebug 2.7.0 will be released
    pecl install xdebug-beta
    mv /tmp/xdebug.ini /usr/local/etc/php/conf.d/
else
    rm /tmp/xdebug.ini
fi
