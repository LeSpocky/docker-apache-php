# SPDX-FileCopyrightText: 2025 Alexander Dahl <post@lespocky.de>
# SPDX-License-Identifier: MIT

FROM php:8.4.13-apache@sha256:30cf37c4a2680da1f7c00e044eb515dda1a875f4a553384a1289bf5e80acd40b
RUN a2enmod rewrite
# hadolint ignore=DL3059
RUN docker-php-ext-install mysqli

LABEL org.opencontainers.image.source=https://github.com/LeSpocky/docker-apache-php
LABEL org.opencontainers.image.description="customized docker php image"
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.title=lespocky/apache-php
