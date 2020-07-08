#!/usr/bin/env bash

set -euo pipefail
script_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)
rm -rf ~/.config/git
ln -sf "$script_root/target" ~/.config/git
