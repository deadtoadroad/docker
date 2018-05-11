#!/usr/bin/env bash

set -euo pipefail

dockerHome="/home/${USER}"
dockerPwd="${dockerHome}/${PWD##*/}"

docker run -it --rm -u "$(id -u):$(id -g)" -v "${HOME}/.config/NuGet:${dockerHome}/.config/NuGet" -v "${HOME}/.nuget:${dockerHome}/.nuget" -v "${PWD}:${dockerPwd}" -w "${dockerPwd}" deadtoadroad/nuget "$@"
