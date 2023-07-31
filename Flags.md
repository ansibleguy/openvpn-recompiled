# OpenVPN Compile-Flags

```bash
./configure --help
`configure' configures OpenVPN 2.6.5 to adapt to many kinds of systems.

Usage: ./configure [OPTION]... [VAR=VALUE]...

To assign environment variables (e.g., CC, CFLAGS...), specify them as
VAR=VALUE.  See below for descriptions of some of the useful variables.

Defaults for the options are specified in brackets.

Configuration:
  -h, --help              display this help and exit
      --help=short        display options specific to this package
      --help=recursive    display the short help of all the included packages
  -V, --version           display version information and exit
  -q, --quiet, --silent   do not print `checking ...' messages
      --cache-file=FILE   cache test results in FILE [disabled]
  -C, --config-cache      alias for `--cache-file=config.cache'
  -n, --no-create         do not create output files
      --srcdir=DIR        find the sources in DIR [configure dir or `..']

Installation directories:
  --prefix=PREFIX         install architecture-independent files in PREFIX
                          [/usr/local]
  --exec-prefix=EPREFIX   install architecture-dependent files in EPREFIX
                          [PREFIX]

By default, `make install' will install all the files in
`/usr/local/bin', `/usr/local/lib' etc.  You can specify
an installation prefix other than `/usr/local' using `--prefix',
for instance `--prefix=$HOME'.

For better control, use the options below.

Fine tuning of the installation directories:
  --bindir=DIR            user executables [EPREFIX/bin]
  --sbindir=DIR           system admin executables [EPREFIX/sbin]
  --libexecdir=DIR        program executables [EPREFIX/libexec]
  --sysconfdir=DIR        read-only single-machine data [PREFIX/etc]
  --sharedstatedir=DIR    modifiable architecture-independent data [PREFIX/com]
  --localstatedir=DIR     modifiable single-machine data [PREFIX/var]
  --runstatedir=DIR       modifiable per-process data [LOCALSTATEDIR/run]
  --libdir=DIR            object code libraries [EPREFIX/lib]
  --includedir=DIR        C header files [PREFIX/include]
  --oldincludedir=DIR     C header files for non-gcc [/usr/include]
  --datarootdir=DIR       read-only arch.-independent data root [PREFIX/share]
  --datadir=DIR           read-only architecture-independent data [DATAROOTDIR]
  --infodir=DIR           info documentation [DATAROOTDIR/info]
  --localedir=DIR         locale-dependent data [DATAROOTDIR/locale]
  --mandir=DIR            man documentation [DATAROOTDIR/man]
  --docdir=DIR            documentation root [DATAROOTDIR/doc/openvpn]
  --htmldir=DIR           html documentation [DOCDIR]
  --dvidir=DIR            dvi documentation [DOCDIR]
  --pdfdir=DIR            pdf documentation [DOCDIR]
  --psdir=DIR             ps documentation [DOCDIR]

Program names:
  --program-prefix=PREFIX            prepend PREFIX to installed program names
  --program-suffix=SUFFIX            append SUFFIX to installed program names
  --program-transform-name=PROGRAM   run sed PROGRAM on installed program names

System types:
  --build=BUILD     configure for building on BUILD [guessed]
  --host=HOST       cross-compile to build programs to run on HOST [BUILD]

Optional Features:
  --disable-option-checking  ignore unrecognized --enable/--with options
  --disable-FEATURE       do not include FEATURE (same as --enable-FEATURE=no)
  --enable-FEATURE[=ARG]  include FEATURE [ARG=yes]
  --enable-silent-rules   less verbose build output (undo: "make V=1")
  --disable-silent-rules  verbose build output (undo: "make V=0")
  --enable-dependency-tracking
                          do not reject slow dependency extractors
  --disable-dependency-tracking
                          speeds up one-time build
  --disable-lzo           disable LZO compression support [default=yes]
  --disable-lz4           disable LZ4 compression support [default=yes]
  --enable-comp-stub      disable compression support but still allow limited
                          interoperability with compression-enabled peers
                          [default=no]
  --disable-ofb-cfb       disable support for OFB and CFB cipher modes
                          [default=yes]
  --enable-x509-alt-username
                          enable the --x509-username-field feature
                          [default=no]
  --disable-plugins       disable plug-in support [default=yes]
  --disable-management    disable management server support [default=yes]
  --enable-pkcs11         enable pkcs11 support [default=no]
  --disable-fragment      disable internal fragmentation support (--fragment)
                          [default=yes]
  --disable-port-share    disable TCP server port-share support (--port-share)
                          [default=yes]
  --disable-debug         disable debugging support (disable gremlin and verb
                          7+ messages) [default=yes]
  --enable-small          enable smaller executable size (disable OCC, usage
                          message, and verb 4 parm list) [default=no]
  --disable-dco           disable data channel offload support using the
                          ovpn-dco kernel module [default=yes] on
                          Linux/FreeBSD, can't disable on Windows
  --enable-iproute2       enable support for iproute2 (disables DCO)
                          [default=no]
  --disable-plugin-auth-pam
                          disable auth-pam plugin [default=platform specific]
  --disable-plugin-down-root
                          disable down-root plugin [default=platform specific]
  --enable-pam-dlopen     dlopen libpam [default=no]
  --enable-strict         enable strict compiler warnings (debugging option)
                          [default=no]
  --enable-pedantic       enable pedantic compiler warnings, will not generate
                          a working executable (debugging option) [default=no]
  --enable-werror         promote compiler warnings to errors, will cause
                          builds to fail if the compiler issues warnings
                          (debugging option) [default=no]
  --enable-strict-options enable strict options check between peers (debugging
                          option) [default=no]
  --enable-selinux        enable SELinux support [default=no]
  --enable-systemd        enable systemd support [default=no]
  --enable-async-push     enable async-push support for plugins providing
                          deferred authentication [default=no]
  --disable-wolfssl-options-h
                          Disable including options.h in wolfSSL [default=yes]
  --enable-shared[=PKGS]  build shared libraries [default=yes]
  --enable-static[=PKGS]  build static libraries [default=yes]
  --enable-fast-install[=PKGS]
                          optimize for fast installation [default=yes]
  --disable-libtool-lock  avoid locking (might break parallel builds)
  --disable-unit-tests    Disables building and running the unit tests suite

Optional Packages:
  --with-PACKAGE[=ARG]    use PACKAGE [ARG=yes]
  --without-PACKAGE       do not use PACKAGE (same as --with-PACKAGE=no)
  --with-special-build=STRING
                          specify special build string
  --with-mem-check=TYPE   build with debug memory checking,
                          TYPE=no|dmalloc|valgrind|ssl [default=no]
  --with-crypto-library=library
                          build with the given crypto library,
                          TYPE=openssl|mbedtls|wolfssl [default=openssl]
  --with-openssl-engine   enable engine support with OpenSSL. Default enabled
                          for OpenSSL < 3.0, auto,yes,no [default=auto]
  --with-pic[=PKGS]       try to use only PIC/non-PIC objects [default=use
                          both]
  --with-aix-soname=aix|svr4|both
                          shared library versioning (aka "SONAME") variant to
                          provide on AIX, [default=aix].
  --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
  --with-sysroot[=DIR]    Search for dependent libraries within DIR (or the
                          compiler's sysroot if not specified).

Some influential environment variables:
  CC          C compiler command
  CFLAGS      C compiler flags
  LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a
              nonstandard directory <lib dir>
  LIBS        libraries to pass to the linker, e.g. -l<library>
  CPPFLAGS    (Objective) C/C++ preprocessor flags, e.g. -I<include dir> if
              you have headers in a nonstandard directory <include dir>
  PLUGINDIR   Path of plug-in directory [default=LIBDIR/openvpn/plugins]
  PKG_CONFIG  path to pkg-config utility
  PKG_CONFIG_PATH
              directories to add to pkg-config's search path
  PKG_CONFIG_LIBDIR
              path overriding pkg-config's built-in search path
  CPP         C preprocessor
  IFCONFIG    full path to ipconfig utility
  ROUTE       full path to route utility
  IPROUTE     full path to ip utility
  NETSTAT     path to netstat utility
  GIT         path to git utility
  SYSTEMD_ASK_PASSWORD
              path to systemd-ask-password utility
  SYSTEMD_UNIT_DIR
              Path of systemd unit directory [default=LIBDIR/systemd/system]
  TMPFILES_DIR
              Path of tmpfiles directory [default=LIBDIR/tmpfiles.d]
  RST2MAN     path to rst2man utility
  RST2HTML    path to rst2html utility
  LT_SYS_LIBRARY_PATH
              User-defined run-time library search path.
  TAP_CFLAGS  C compiler flags for tap
  LIBPAM_CFLAGS
              C compiler flags for libpam
  LIBPAM_LIBS linker flags for libpam
  PKCS11_HELPER_CFLAGS
              C compiler flags for PKCS11_HELPER, overriding pkg-config
  PKCS11_HELPER_LIBS
              linker flags for PKCS11_HELPER, overriding pkg-config
  LIBNL_GENL_CFLAGS
              C compiler flags for LIBNL_GENL, overriding pkg-config
  LIBNL_GENL_LIBS
              linker flags for LIBNL_GENL, overriding pkg-config
  LIBCAPNG_CFLAGS
              C compiler flags for LIBCAPNG, overriding pkg-config
  LIBCAPNG_LIBS
              linker flags for LIBCAPNG, overriding pkg-config
  OPENSSL_CFLAGS
              C compiler flags for OpenSSL
  OPENSSL_LIBS
              linker flags for OpenSSL
  MBEDTLS_CFLAGS
              C compiler flags for mbedtls
  MBEDTLS_LIBS
              linker flags for mbedtls
  WOLFSSL_CFLAGS
              C compiler flags for wolfssl. The include directory should
              contain the regular wolfSSL header files but also the wolfSSL
              OpenSSL header files. Ex: -I/usr/local/include
              -I/usr/local/include/wolfssl
  WOLFSSL_LIBS
              linker flags for wolfssl
  WOLFSSL_INCLUDEDIR
              value of includedir for wolfssl, overriding pkg-config
  LZO_CFLAGS  C compiler flags for lzo
  LZO_LIBS    linker flags for lzo
  LZ4_CFLAGS  C compiler flags for lz4
  LZ4_LIBS    linker flags for lz4
  libsystemd_CFLAGS
              C compiler flags for libsystemd, overriding pkg-config
  libsystemd_LIBS
              linker flags for libsystemd, overriding pkg-config
  P11KIT_CFLAGS
              C compiler flags for P11KIT, overriding pkg-config
  P11KIT_LIBS linker flags for P11KIT, overriding pkg-config
  OPTIONAL_INOTIFY_CFLAGS
              C compiler flags for OPTIONAL_INOTIFY, overriding pkg-config
  OPTIONAL_INOTIFY_LIBS
              linker flags for OPTIONAL_INOTIFY, overriding pkg-config
  CMOCKA_CFLAGS
              C compiler flags for CMOCKA, overriding pkg-config
  CMOCKA_LIBS linker flags for CMOCKA, overriding pkg-config

Use these variables to override the choices made by `configure' or to help
it to find libraries and programs with nonstandard names/locations.

Report bugs to <openvpn-users@lists.sourceforge.net>.
```
