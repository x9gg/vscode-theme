#!/bin/bash

TIMESTAMP=$(date +%s)
VERSION="0.1.${TIMESTAMP}"

npm version "${VERSION}" --no-git-tag-version --force

git add package.json package-lock.json

git tag "v${VERSION}" -m "Release version ${VERSION}"

git push origin HEAD
git push origin "refs/tags/v${VERSION}"