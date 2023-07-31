#!/usr/bin/env bash

set -euo pipefail

VERSION="$1"
FLAGS="$2"

echo '### CLEANUP ###'
rm -rf /tmp/openvpn-*
cd /tmp

echo '### DOWNLOADING SOURCES ###'
wget "https://swupdate.openvpn.org/community/releases/openvpn-${VERSION}.tar.gz"
tar xf "openvpn-${VERSION}.tar.gz"
cd "/tmp/openvpn-${VERSION}"

echo '### CONFIGURE ###'
# shellcheck disable=SC2086
./configure $FLAGS
echo '### MAKE ###'
make
echo '### MAKE INSTALL ###'
sudo make install

echo '### COPY ###'
cp /usr/local/sbin/openvpn "/tmp/openvpn_${VERSION}"

echo '### MAKE UNINSTALL ###'
sudo make uninstall
