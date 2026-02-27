# Dockerfile
ARG CRONICLE_VERSION=latest

FROM ghcr.io/cronicle-edge/cronicle:${CRONICLE_VERSION}

USER root

RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-venv \
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

USER cronicle
