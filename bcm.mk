DEVICE_PACKAGE_OVERLAYS += vendor/bcm/overlay

PRODUCT_PACKAGES += \
    Stk \
    Camera \
    Launcher2

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
    vendor/bcm/etc/SuplRootCert:system/etc/SuplRootCert \
    vendor/bcm/etc/sysctl.conf:system/etc/sysctl.conf 

PRODUCT_COPY_FILES += \
    vendor/bcm/bin/props:system/bin/props \
    vendor/bcm/bin/sh.bash:system/bin/sh.bash \
    vendor/bcm/bin/su.bash:system/bin/su.bash \
    vendor/bcm/bin/sysinit:system/bin/sysinit \
    vendor/bcm/bin/sh:system/bin/sh \
    vendor/bcm/bin/e2fsck:system/bin/e2fsck

PRODUCT_COPY_FILES += \
    vendor/bcm/xbin/bash:system/xbin/bash \
    vendor/bcm/xbin/busybox.m2sd:system/xbin/busybox.m2sd

PRODUCT_COPY_FILES += \
    vendor/bcm/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/bcm/lib/libext2_blkid.so:system/lib/libext2_blkid.so \
    vendor/bcm/lib/libext2_com_err.so:system/lib/libext2_com_err.so \
    vendor/bcm/lib/libext2_e2p.so:system/lib/libext2_e2p.so \
    vendor/bcm/lib/libext2fs.so:system/lib/libext2fs.so \
    vendor/bcm/lib/libext2_profile.so:system/lib/libext2_profile.so \
    vendor/bcm/lib/libext2_uuid.so:system/lib/libext2_uuid.so

BUILD_DATE := $(shell date +%Y%M%d)
BUILD_USER := $(shell whoami)
BUILD_VERSION := RC2.2
BUILD_UPDATE := 4

ifeq ($(NIGHTLY_BUILD),true)
    BUILD_VERSION := $(BUILD_VERSION)U$(BUILD_UPDATE)-$(BUILD_DATE)
else
    BUILD_VERSION := $(BUILD_VERSION)U$(BUILD_UPDATE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=0 \
    ro.build.display.id=BCM $(BUILD_VERSION) Update $(BUILD_UPDATE) by DK_Zero-Cool \
    ro.build.romversion=BCM-$(BUILD_VERSION)U$(BUILD_UPDATE) \
    ro.modversion=BCM $(BUILD_VERSION) Update $(BUILD_UPDATE) by DK_Zero-Cool \
    ro.cm.version=9.0.0-RC0-$(BUILD_DATE)
