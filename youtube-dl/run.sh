#!/usr/bin/env bash

set -euo pipefail

dockerPwd="/root/${PWD##*/}"

docker run -it --rm -v "${PWD}:${dockerPwd}" -w "${dockerPwd}" deadtoadroad/youtube-dl "$@"
