# NatNetLinux-packaging

This is the necessary packaging scripts needed to make proper source tarballs
as well as .deb and .rpm files for distribution.

## Source Tarball

The following command will create natnetlinux_0.1.0.orig.tar.xz from the
`../NatNetLinux` folder, which is a clone of the upstream NatNetLinux
repository.

    $ ./makesourcepackage.sh ../NatNetLinux natnetlinux 0.1.0

## Debian Package

All the required debian package crap is in the `debian/` subfolder. Just make
the source package, unpack it, move the `debian/` folder inside the unpacked
source folder, and you are ready to run `dpkg-buildpackage`.

