#! /usr/bin/env sh

PACKAGE_LOCATION=$1

echo "Fetching version from package.json"
VERSION=$(yq "$PACKAGE_LOCATION" .version)"
echo "version=$VERSION >> "$GITHUB_OUTPUT"
echo "Successfully written $VERSION to output"
