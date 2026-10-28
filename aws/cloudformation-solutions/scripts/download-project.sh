#!/usr/bin/env bash
set -euo pipefail
PROJECT="${1:?Usage: download-project.sh PROJECT_FOLDER [REPO_URL]}"
REPO="${2:-https://github.com/cloud-optimization-solutions/cloudformation-solutions.git}"
case "$PROJECT" in *[!a-zA-Z0-9_-]*|'') echo 'Invalid project folder' >&2; exit 1;; esac
DEST="${PROJECT}"
if [ -e "$DEST" ]; then echo "Destination exists: $DEST" >&2; exit 1; fi
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
git clone --quiet --filter=blob:none --sparse --depth=1 "$REPO" "$TMP/repo"
git -C "$TMP/repo" sparse-checkout set "projects/$PROJECT"
[ -d "$TMP/repo/projects/$PROJECT" ] || { echo 'Project not found' >&2; exit 1; }
cp -R "$TMP/repo/projects/$PROJECT" "$DEST"
echo "Downloaded $DEST"
