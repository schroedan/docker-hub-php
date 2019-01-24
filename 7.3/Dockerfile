FROM php:7.3.1-alpine

ENV XDEBUG_VERSION=2.7.0beta1

RUN apk add --no-cache --virtual .build-deps \
    ${PHPIZE_DEPS}

RUN set -xe \
    && pecl install \
        xdebug-${XDEBUG_VERSION} \
    && apk del .build-deps
