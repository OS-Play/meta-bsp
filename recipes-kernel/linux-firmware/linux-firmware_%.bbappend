PACKAGES += " ${PN}-bcm43430-kvim"

COMPATIBLE_MACHINE:${PN}-bcm43430-kvim = "khadas-vim playos-kvim"

do_install:append() {
    ln -s ${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.AP6212.txt \
            ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.khadas,vim.txt
}

FILES:${PN}-bcm43430-kvim = "${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.khadas,vim.txt"
RDEPENDS:${PN}-bcm43430-kvim = "${PN}-bcm43430"
ALLOW_EMPTY:${PN}-bcm43430-kvim = "1"
