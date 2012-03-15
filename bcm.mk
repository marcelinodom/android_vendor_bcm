PRODUCT_COPY_FILES += \
    vendor/bcm/init.d/10mounts2sd:system/etc/init.d/10mounts2sd \
    vendor/bcm/init.d/05hostname:system/etc/init.d/05hostname \
    vendor/bcm/init.d/09mkloops:system/etc/init.d/09mkloops \
    vendor/bcm/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/bcm/boot.d/99bash:system/etc/boot.d/99bash

PRODUCT_COPY_FILES += \
    vendor/bcm/dhcpcd/01-configure:system/etc/dhcpcd/dhcpcd.d/01-configure \
    vendor/bcm/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/bcm/dhcpcd/dhcpcd-hook:system/etc/dhcpcd/dhcpcd-hook

PRODUCT_COPY_FILES += \
    vendor/bcm/etc/bash.bashrc:system/etc/bash.bashrc \
    vendor/bcm/etc/gps.conf:system/etc/gps.conf \
    vendor/bcm/etc/hostname:system/etc/hostname \
    vendor/bcm/etc/hosts:system/etc/hosts \
    vendor/bcm/etc/shells:system/etc/shells \
    vendor/bcm/etc/SuplRootCert:system/etc/SuplRootCert 

PRODUCT_COPY_FILES += \
    vendor/bcm/bin/props:system/bin/props \
    vendor/bcm/bin/sh.bash:system/bin/sh.bash \
    vendor/bcm/bin/su.bash:system/bin/su.bash \
    vendor/bcm/bin/sysinit:system/bin/sysinit \
    vendor/bcm/bin/sh:system/bin/sh

PRODUCT_COPY_FILES += \
    vendor/bcm/xbin/bash:system/xbin/bash \
    vendor/bcm/xbin/busybox.m2sd:system/xbin/busybox.m2sd
