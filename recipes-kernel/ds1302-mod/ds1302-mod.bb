SUMMARY = "DS1302 Linux driver"
DESCRIPTION = "${SUMMARY}"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"

inherit module

SRC_URI = "git://github.com/ranyh/DS1302.git;protocol=https;branch=master \
          file://Makefile \
          "
SRCREV = "674774bb8172143a053446010a3bd5826fb9d1f1"

S = "${WORKDIR}/git"

do_configure:prepend() {
    cp ${WORKDIR}/Makefile ${S}/
}

RPROVIDES:${PN} += "kernel-module-playos-ds1302"
KERNEL_MODULE_AUTOLOAD += "playos_ds1302"
