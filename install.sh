#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

echo "Building cosmic-term (release)..."
just build-release

echo "Installing..."
sudo install -Dm0755 target/release/cosmic-term /usr/bin/cosmic-term

echo "Done. Restart cosmic-term to pick up changes."
