# SPDX-FileCopyrightText: 2025 Alexander Dahl <post@lespocky.de>
# SPDX-License-Identifier: MIT

FROM php:8.4.13-apache@sha256:0e3cd97ac29126f00a0dd2827148ba592a9d3a2ff2508a1d9fc282597ff30f20
RUN a2enmod rewrite
# hadolint ignore=DL3059
RUN docker-php-ext-install mysqli

LABEL org.opencontainers.image.source=https://github.com/LeSpocky/docker-apache-php
LABEL org.opencontainers.image.description="customized docker php image"
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.title=lespocky/apache-php
