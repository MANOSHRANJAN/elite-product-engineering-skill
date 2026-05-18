#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="elite-product-engineering"
SOURCE_DIR="$ROOT_DIR/skills/$SKILL_NAME"
CODEX_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET_DIR="$CODEX_DIR/skills/$SKILL_NAME"

if [[ ! -f "$SOURCE_DIR/SKILL.md" ]]; then
  echo "Could not find $SOURCE_DIR/SKILL.md"
  exit 1
fi

mkdir -p "$CODEX_DIR/skills"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

echo "Installed $SKILL_NAME to $TARGET_DIR"
echo 'Use it with: Use $elite-product-engineering to audit this repo and produce a high-impact execution plan.'
