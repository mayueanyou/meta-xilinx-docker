PACKAGES =+ "${PN}-conf"
FILES_${PN}-conf = "${sysconfdir}/systemd/system/docker.service.d/docker-ramdisk.conf"
ALLOW_EMPTY_${PN}-conf = "1"
RDEPENDS_${PN} += "${PN}-conf"
 
do_install:append() {
         if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
                install -d ${D}${sysconfdir}/systemd/system/docker.service.d
                if [ "${INITRAMFS_IMAGE}" ]; then
                        printf "[Service]\nEnvironment=\"DOCKER_RAMDISK=true\"" > ${D}${sysconfdir}/systemd/system/docker.service.d/docker-ramdisk.conf
                fi
         fi
}
