#!/usr/bin/env bash
# KB5034: promote the reviewed develop branch to main.
# Run locally from the repository: bash release.sh
# Updates the student-facing LiaScript content.

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

if [[ "$(git branch --show-current)" != "develop" ]]; then
    echo 'Error: switch to develop before releasing.' >&2
    exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
    echo 'Error: commit or stash all changes before releasing.' >&2
    exit 1
fi

echo '==> Fetching origin/develop and origin/main'
git fetch origin develop main

if [[ "$(git rev-parse HEAD)" != "$(git rev-parse origin/develop)" ]]; then
    echo 'Error: local develop differs from origin/develop. Sync it before releasing.' >&2
    exit 1
fi

echo '==> Changes to be released'
git log --oneline origin/main..develop
git diff --stat origin/main...develop

echo
printf 'Publish develop to main? This will update the student-facing content. [y/N] '
read -r answer

if [[ ! "$answer" =~ ^[Yy]$ ]]; then
    echo 'Release cancelled.'
    exit 0
fi

echo '==> Switching to main'
git switch main
git pull --ff-only origin main

echo '==> Merging reviewed develop into main'
git merge --no-ff develop -m 'Release develop to main'

echo '==> Pushing main'
git push origin main

echo '==> Returning to develop'
git switch develop

echo '✓ Release complete. Student-facing LiaScript source updated.'