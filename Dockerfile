ARG DOCKER_VERSION=19.03.5

FROM docker:${DOCKER_VERSION}

RUN apk update \
    && apk add --no-cache --virtual .build-deps \
        python-dev \
        libffi-dev \
        openssl-dev \
        gcc \
        libc-dev make \
    && apk add --no-cache py-pip \
    && pip install docker-compose \
    && apk del .build-deps
