pkg_name=snap
pkg_origin=franklinwebber
pkg_version="0.1.1"

pkg_maintainer="Franklin Webber <franklin.webber@gmail.com>"
pkg_license=('Apache-2.0')

pkg_bin_dirs=(bin)

do_build() {
    return 0
}

do_install() {
    cp bash/* $pkg_prefix/bin
    chmod 777 $pkg_prefix/bin/*
}
