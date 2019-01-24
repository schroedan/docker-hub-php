FROM php:5.6.40-alpine

ENV XDEBUG_VERSION=2.3.3

RUN apk add --no-cache --virtual .build-deps \
    ${PHPIZE_DEPS}

RUN set -xe \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
