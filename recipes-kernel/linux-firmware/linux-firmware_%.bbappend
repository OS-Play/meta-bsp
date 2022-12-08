
SRC_URI += "https://github.com/LibreELEC/brcmfmac_sdio-firmware/raw/master/BCM43430A1.vim;name=BCM43430A1-vim"
SRC_URI[BCM43430A1-vim.sha256sum] = "d396912aa4efa7e0ea93dc6b63b1088619b59676ab53404d14fe79f5c71a5da0"

PACKAGES =+ " ${PN}-bcm43430-kvim"

do_install:append() {
    ln -s ${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.AP6212.txt \
            ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.khadas,vim.txt
    install -d ${D}${nonarch_base_libdir}/firmware/brcm/
    install -D -m0644 ${WORKDIR}/BCM43430A1.vim ${D}${nonarch_base_libdir}/firmware/brcm/BCM43430A1.hcd
}


LICENSE:${PN}-bcm43430-kvim = "Firmware-cypress"
FILES:${PN}-bcm43430-kvim += "${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.khadas,vim.txt \
                            ${nonarch_base_libdir}/firmware/brcm/BCM43430A1.hcd"
RDEPENDS:${PN}-bcm43430-kvim = "${PN}-bcm43430"
