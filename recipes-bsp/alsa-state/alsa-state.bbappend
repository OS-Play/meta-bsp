FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://states/"

do_install:append:meson-gxl() {
    install -m0644 ${WORKDIR}/states/kvim/*.state ${D}${localstatedir}/lib/alsa/
}
