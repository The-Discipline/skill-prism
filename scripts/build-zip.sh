#!/usr/bin/env bash
# Builds dist/prism-<version>.zip and dist/prism-latest.zip for upload in the Claude app (Customize > Skills).
# The ZIP root is the skill folder. The version comes from plugins/prism/.claude-plugin/plugin.json.
set -euo pipefail
cd "$(dirname "$0")/.."
version=$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' plugins/prism/.claude-plugin/plugin.json | head -1)
[ -n "$version" ] || { echo "No version found in plugin.json" >&2; exit 1; }
mkdir -p dist
rm -f dist/prism-*.zip
(cd plugins/prism/skills && zip -qr "../../../dist/prism-$version.zip" prism)
cp "dist/prism-$version.zip" dist/prism-latest.zip
echo "Built dist/prism-$version.zip and dist/prism-latest.zip"
