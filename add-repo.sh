#!/bin/bash
set -e

REPO_URL="https://redsonbabytiger.github.io/apt-repo"

echo "Adding RedsonBabyTiger APT repository..."

echo "deb [trusted=yes] $REPO_URL stable main" | sudo tee /etc/apt/sources.list.d/redsonbabytiger.list >/dev/null

sudo apt update

echo "Repository added successfully!"
echo "You can now install packages, e.g.:"
echo "    sudo apt install cros-minecraft"
