#!/usr/bin/env bash

set -euo pipefail

VERSION="$1"
FLAGS="$2"

cd /tmp
apt-get install -y libssl-dev liblzo2-dev libpam0g-dev build-essential
wget "https://swupdate.openvpn.org/community/releases/openvpn-${VERSION}.tar.gz"
tar xf "openvpn-${VERSION}.tar.gz"
cd "openvpn-${VERSION}"

# shellcheck disable=SC2086
./configure $FLAGS
make
cp openvpn /tmp
