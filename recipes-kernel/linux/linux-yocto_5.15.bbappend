PV = "${LINUX_VERSION}"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:meson-gx = " file://usb-gadget.cfg \
        file://nfs-support.cfg"
SRC_URI:append = " file://0001-dts-Add-DS1302-driver-node.patch"

FILES:${KERNEL_PACKAGE_NAME}-dbg += "${libdir}/debug/"

