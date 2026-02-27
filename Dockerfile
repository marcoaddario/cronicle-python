# Dockerfile
ARG CRONICLE_VERSION=latest

FROM ghcr.io/cronicle-edge/cronicle-edge:${CRONICLE_VERSION}

USER root

RUN apk add --no-cache \
        python3 \
        py3-pip \
        python3-dev \
        py3-virtualenv \
        build-base \
        libffi-dev

# Ensure cronicle owns its own stuff
RUN chown -R cronicle:cronicle \
    /opt/cronicle
    
USER cronicle
