#!/bin/bash
set -e

echo "mecha-device" > /etc/hostname
echo "127.0.0.1 localhost" > /etc/hosts
echo "127.0.1.1 mecha-device" >> /etc/hosts
