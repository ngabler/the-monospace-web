#!/bin/bash
set -e

# Install Pandoc if not present (use a recent version; check https://github.com/jgm/pandoc/releases for latest)
if ! command -v pandoc > /dev/null; then
  echo "Installing Pandoc..."
  curl -L https://github.com/jgm/pandoc/releases/download/3.2.1/pandoc-3.2.1-linux-amd64.tar.gz -o pandoc.tar.gz
  tar xvzf pandoc.tar.gz --strip-components=1 -C /usr/local/
  rm pandoc.tar.gz
  pandoc --version
fi

# Run the original build
make
