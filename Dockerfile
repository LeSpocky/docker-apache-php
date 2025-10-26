# SPDX-FileCopyrightText: 2025 Alexander Dahl <post@lespocky.de>
# SPDX-License-Identifier: MIT

FROM php:8.4.14-apache@sha256:d61f118bb2d52f2ddfbd160972f42bf794a6c605dcd1786cbf3dafdb924e592d

# enable Apache2 module
RUN a2enmod rewrite

# configure and install php extension 'mysqli'
# hadolint ignore=DL3059
RUN docker-php-ext-install mysqli

# configure and install php extension 'gd'
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends libgd3 \
    && apt-get install -y --no-install-recommends libgd-dev \
    && docker-php-ext-configure gd --with-external-gd \
    && docker-php-ext-install gd \
    && apt-get remove -y libgd-dev && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

LABEL org.opencontainers.image.source=https://github.com/LeSpocky/docker-apache-php
LABEL org.opencontainers.image.description="customized docker php image"
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.title=lespocky/apache-php
