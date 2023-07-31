#!/usr/bin/env bash

set -euo pipefail

VERSION="$1"
FLAGS="$2"

apt-get install -y libssl-dev liblzo2-dev libpam0g-dev build-essential

cd /tmp
wget "https://swupdate.openvpn.org/community/releases/openvpn-${VERSION}.tar.gz"
tar xf "openvpn-${VERSION}.tar.gz"
cd "/tmp/openvpn-${VERSION}"

# shellcheck disable=SC2086
./configure $FLAGS
make

ls -l "/tmp/openvpn-${VERSION}"
ls -l "/tmp/openvpn-${VERSION}/build"
cp openvpn /tmp
