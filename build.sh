#!/bin/bash

# Download and install Hugo Extended 0.146.0
HUGO_VERSION="0.146.0"
HUGO_TAR="hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz"
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TAR}"

echo "Downloading Hugo ${HUGO_VERSION}..."
wget -q "$HUGO_URL" -O "/tmp/${HUGO_TAR}"

echo "Extracting Hugo..."
tar -xzf "/tmp/${HUGO_TAR}" -C /tmp

echo "Hugo version:"
/tmp/hugo version

echo "Building site..."
/tmp/hugo --gc --minify