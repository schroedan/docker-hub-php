FROM php:7.1.13-alpine

ENV XDEBUG_VERSION=2.5.5

RUN apk add --no-cache --virtual .build-deps \
    ${PHPIZE_DEPS}

RUN set -xe \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
