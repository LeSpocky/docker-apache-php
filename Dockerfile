# SPDX-FileCopyrightText: 2025 Alexander Dahl <post@lespocky.de>
# SPDX-License-Identifier: MIT

FROM php:8.4.13-apache@sha256:25805dd356ff2e739ffe1a9ef3e9ed96e6638b6e43418a9a29833a60f6130695

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
