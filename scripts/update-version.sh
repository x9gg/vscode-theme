#!/bin/bash

TIMESTAMP=$(date +%s)
VERSION="0.1.${TIMESTAMP}"

npm version "${VERSION}"

git push origin HEAD
git push origin "refs/tags/v${VERSION}"