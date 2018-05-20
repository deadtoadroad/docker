#!/usr/bin/env bash

set -euo pipefail

docker run -it --rm -v "$(pwd):/root/${PWD##*/}" -w "/root/${PWD##*/}" deadtoadroad/youtube-dl "$@"
