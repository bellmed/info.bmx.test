#!/usr/bin/env bash
cd "$(dirname $0)" || exit 1

# pre-install script
# ...

# install script
npm install

# post-install script
./node_modules/.bin/husky install \
  && npm run tool:update-lifecycle \
  && npm run tool:package-hash
