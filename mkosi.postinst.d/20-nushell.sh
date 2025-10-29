#!/bin/bash
set -e

# Make sure CA certificates are installed
apt-get update || true
apt-get install -y ca-certificates gnupg

# Ensure directories exist
mkdir -p /etc/apt/trusted.gpg.d
mkdir -p /etc/apt/sources.list.d

# Add Nushell GPG key
curl -fsSL https://apt.fury.io/nushell/gpg.key | gpg --dearmor > /etc/apt/trusted.gpg.d/fury-nushell.gpg

# Add Nushell repository
echo "deb https://apt.fury.io/nushell/ /" > /etc/apt/sources.list.d/fury.list

# Update and install Nushell
apt-get update
apt-get install -y nushell
