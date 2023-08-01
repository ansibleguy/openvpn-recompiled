#!/usr/bin/env python3

from urllib import request
from json import loads as json_loads
from json import dumps as json_dumps

min_version = [2, 5, 0]
api_ovpn = 'https://api.github.com/repos/openvpn/openvpn/tags'
api_ag = 'https://api.github.com/repos/ansibleguy/openvpn-recompiled/releases'

with request.urlopen(api_ovpn) as result:
    releases_ovpn_raw = json_loads(result.read())

with request.urlopen(api_ag) as result:
    releases_ag_raw = json_loads(result.read())


def _higher_version(release: str) -> bool:
    release = release.replace('v', '').split('.')
    try:
        return int(release[0]) > min_version[0] or (
                int(release[0]) == min_version[0] and int(release[1]) > min_version[1]
        ) or (
                int(release[0]) == min_version[0] and int(release[1]) == min_version[1] and int(release[2]) > min_version[2]
        )

    except (IndexError, ValueError):
        return False

releases_ovpn = [entry['name'].replace('v', '') for entry in releases_ovpn_raw]
releases_ovpn = [release for release in releases_ovpn if _higher_version(release)]
releases_ag =  [entry['name'] for entry in releases_ag_raw]
releases_new = [release for release in releases_ovpn if release not in releases_ag]

print(json_dumps(releases_new))
