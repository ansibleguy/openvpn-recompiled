#!/usr/bin/env bash

set -euo pipefail

VERSION="$1"
FLAGS="$2"

cd /tmp
wget "https://swupdate.openvpn.org/community/releases/openvpn-${VERSION}.tar.gz"
tar xf "openvpn-${VERSION}.tar.gz"
cd "/tmp/openvpn-${VERSION}"

# shellcheck disable=SC2086
./configure $FLAGS
make
sudo make install
