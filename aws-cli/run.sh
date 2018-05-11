#!/usr/bin/env bash

set -euo pipefail

docker run -it --rm -v "${HOME}/.aws:/root/.aws" deadtoadroad/aws-cli "$@"
