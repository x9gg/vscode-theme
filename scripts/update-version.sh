#!/bin/bash

TIMESTAMP=$(date +%s)
VERSION="0.1.${TIMESTAMP}"

npm version "${VERSION}" --no-git-tag-version --force

git add package.json package-lock.json
git commit -m "Bump version to ${VERSION}"

# Create a Git tag for the new version
git tag "v${VERSION}"

# Push the commit and the single tag to the remote repository
git push origin HEAD
git push origin "refs/tags/v${VERSION}"