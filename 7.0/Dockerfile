FROM php:7.0.33-alpine

ENV XDEBUG_VERSION=2.4.1

RUN apk add --no-cache --virtual .build-deps \
    ${PHPIZE_DEPS}

RUN set -xe \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
