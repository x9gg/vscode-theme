#!/bin/bash

TIMESTAMP=$(date +%s)
VERSION="0.1.${TIMESTAMP}"

npm version "${VERSION}" --no-git-tag-version --force

git add package.json package-lock.json
git commit -m "Bump version to ${VERSION}"

git tag "v${VERSION}" -m "Bump version to ${VERSION}"

git push origin HEAD
git push origin "refs/tags/v${VERSION}"