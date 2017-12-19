FROM php:7.0.26-alpine

ENV XDEBUG_VERSION=2.4.1

RUN apk add --no-cache --virtual .persistent-deps \
    icu-dev

RUN apk add --no-cache --virtual .build-deps \
    $PHPIZE_DEPS

RUN set -xe \
    && docker-php-ext-install \
        intl \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
