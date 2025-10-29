#!/bin/bash
set -e
echo "Installing Nano..."
apt-get update || true
apt-get install -y nano
