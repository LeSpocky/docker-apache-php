# SPDX-FileCopyrightText: 2025 Alexander Dahl <post@lespocky.de>
# SPDX-License-Identifier: MIT

FROM php:8.5.7-apache@sha256:c6e17deefe4b7f79fd6a826a3d5f61f28035c3a7c12a1b446bf45f0e07bee9b2

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
