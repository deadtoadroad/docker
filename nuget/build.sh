#!/usr/bin/env bash

set -euo pipefail

scriptRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${scriptRoot}"
echo "addgroup --system -gid $(id -g) ${USER}" > user.sh
echo "adduser --system --shell /bin/bash --uid $(id -u) --gid $(id -g) ${USER}" >> user.sh
docker build -t deadtoadroad/nuget .
