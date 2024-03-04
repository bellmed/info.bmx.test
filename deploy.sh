#!/usr/bin/env bash
cd "$(dirname $0)" || exit 1

# pull without running git hooks
mkdir -p .githooks
mv .git/hooks/* .githooks
git pull
mv .githooks/* .git/hooks/
rm -rf .githooks

# deploy app
npm run build
