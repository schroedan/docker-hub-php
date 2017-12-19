FROM php:7.2.0-alpine

ENV XDEBUG_VERSION=2.6.0alpha1

RUN apk add --no-cache --virtual .persistent-deps \
    icu-dev

RUN apk add --no-cache --virtual .build-deps \
    ${PHPIZE_DEPS}

RUN set -xe \
    && docker-php-ext-install \
        intl \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
