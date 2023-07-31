# OpenVPN Re-Compiled

[OpenVPN community](https://community.openvpn.net/openvpn) is a great application and project!

But its default packages may lack some important features that can only be enabled at compile-time - like:

* `--enable-iproute2` to enable OpenVPN to [run as unprivileged user](https://openvpn.net/community-resources/hardening-openvpn-security/)


This repository:
* wants to provide re-compiled packages for those use-cases
* focuses on server-side usage
* currently only has support for debian-based systems

If you would like to see another combinations of flags - [check out the options](https://github.com/ansibleguy/openvpn-recompiled/blob/main/Flags.md) and [create an issue](https://github.com/ansibleguy/openvpn-recompiled/issues)
