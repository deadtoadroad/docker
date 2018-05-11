#!/usr/bin/env bash

set -euo pipefail

scriptRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker build -t deadtoadroad/aws-cli "${scriptRoot}"
