#!/bin/bash
# Run an isolated skin preview alongside the installed Tipflow.
# Preferences and mouse listeners are isolated; global skins are real.
set -euo pipefail
PROJECT_ROOT="$(dirname "$(dirname "$(realpath "$0")")")"
PREVIEW_APP="${TMPDIR:-/tmp/}Tipflow Development.app"
TIPFLOW_OUTPUT_DIR="$PREVIEW_APP" \
TIPFLOW_BUNDLE_ID="com.tipflow.skins-preview" \
bash "$PROJECT_ROOT/scripts/build_app.sh"
OPEN_OPTIONS=(-W)
if [ -n "${TIPFLOW_PREVIEW_LOG:-}" ]; then
  OPEN_OPTIONS+=(--stdout "$TIPFLOW_PREVIEW_LOG" --stderr "${TIPFLOW_PREVIEW_LOG}.err")
fi
open "${OPEN_OPTIONS[@]}" -a "$PREVIEW_APP" --args --skin-preview --show-skins -TipflowLanguage zh-Hans "$@"
