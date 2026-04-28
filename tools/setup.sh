#!/usr/bin/env bash
# First-time dev setup: install Flutter dependencies and git hooks.
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

echo "Installing Flutter dependencies..."
flutter pub get

echo "Installing git hooks..."
bash tools/install-hooks.sh

echo ""
echo "Setup complete."
