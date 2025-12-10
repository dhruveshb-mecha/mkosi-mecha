# #!/bin/bash
# set -e

# # Make sure required packages are installed
# dnf install -y ca-certificates gnupg2 || dnf install -y gnupg || true

# # Create required directories
# mkdir -p /etc/pki/rpm-gpg
# mkdir -p /etc/yum.repos.d

# # Add Nushell GPG key
# curl -fsSL https://yum.fury.io/nushell/gpg.key \
#     -o /etc/pki/rpm-gpg/RPM-GPG-KEY-gemfury-nushell

# # Add Nushell repository
# cat << 'EOF' > /etc/yum.repos.d/fury-nushell.repo
# [gemfury-nushell]
# name=Gemfury Nushell Repo
# baseurl=https://yum.fury.io/nushell/
# enabled=1
# gpgcheck=1
# gpgkey=/etc/pki/rpm-gpg/RPM-GPG-KEY-gemfury-nushell
# EOF

# # Update and install Nushell
# dnf makecache
# dnf install -y nushell || dnf install -y nu
