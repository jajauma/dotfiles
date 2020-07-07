#!/usr/bin/env bash

set -euo pipefail
script_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)
exec "$script_root/.tools/transcrypt/transcrypt" "$@"
