<!--
SPDX-FileCopyrightText: 2025 Alexander Dahl <post@lespocky.de>
SPDX-License-Identifier: CC-BY-4.0
-->

# php with Apache httpd in Docker (docker-apache-php)

[![REUSE status](https://api.reuse.software/badge/github.com/LeSpocky/docker-apache-php)](https://api.reuse.software/info/github.com/LeSpocky/docker-apache-php)
![license MIT](https://img.shields.io/badge/license-MIT-informational)
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

Customized Docker PHP image, derived from the [official php Docker
image](https://hub.docker.com/_/php), extended to be used with WordPress.

## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Background

The official php Docker image is not suitable for certain use cases as-is.
This enables some Apache modules not enabled in the php image by default.

## Install

Pull the image from … *(tbd)*

## Usage

If not pulling the distributed image, build it by yourself the usual way:

```
docker build .
```

For further documentation on how to use the image, see
[php Docker image](https://hub.docker.com/_/php).

## Contributing

Pull requests accepted.

## License

This project is licensed unter the [MIT License](LICENSES/MIT.txt)
unless noted differently in the file and adheres to
[REUSE compliance](https://api.reuse.software/info/git.fsfe.org/reuse/api).

© 2025 [Alexander Dahl](https://github.com/LeSpocky) and contributors
