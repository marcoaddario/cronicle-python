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
        libffi-dev \
        chromium \
        chromium-chromedriver \
        nss \
        freetype \
        harfbuzz \
        ca-certificates \
        ttf-freefont

# Ensure cronicle owns its own stuff
RUN mkdir -p /opt/cronicle.cache/selenium \
    && chown -R cronicle:cronicle /opt/cronicle
    
USER cronicle
