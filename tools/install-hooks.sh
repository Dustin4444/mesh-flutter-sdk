#!/usr/bin/env bash
# Points git at the committed .githooks directory and makes hooks executable.
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"
git config core.hooksPath .githooks
chmod +x .githooks/*
echo "Git hooks installed."
echo "  pre-push: runs dart format on changed Dart files before each push."
