PV = "${LINUX_VERSION}"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:meson-gx = " file://usb-gadget.cfg \
        file://nfs-support.cfg"
