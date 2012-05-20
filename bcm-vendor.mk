PRODUCT_BRAND ?= cyanogenmod

PRODUCT_PACKAGE_OVERLAYS += vendor/bcm/overlay

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

ALARM_PATH := vendor/bcm/prebuild/media/audio/alarms
NOTIFICATION_PATH := vendor/bcm/prebuild/media/audio/notifications
RINGTONE_PATH := vendor/bcm/prebuild/media/audio/ringtones
UI_PATH := vendor/bcm/prebuild/media/audio/ui

# Alarms
PRODUCT_COPY_FILES += \
	$(ALARM_PATH)/CyanAlarm.ogg:system/media/audio/alarms/CyanAlarm.ogg

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
	$(NOTIFICATION_PATH)/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
	$(NOTIFICATION_PATH)/CyanPing.ogg:system/media/audio/notifications/CyanPing.ogg \
	$(NOTIFICATION_PATH)/Naughty.ogg:system/media/audio/notifications/Naughty.ogg \
	$(NOTIFICATION_PATH)/Pong.ogg:system/media/audio/notifications/Pong.ogg

# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/CyanTone.ogg:system/media/audio/ringtones/CyanTone.ogg

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CyanTone.ogg \
    ro.config.notification_sound=CyanMessage.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

PRODUCT_PACKAGES += \
    Mms \
    Camera \
    Launcher2 \
    Camera \
    LatinIME \
    Superuser \
    Superuser.apk \
    su \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    Trebuchet \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    CMWallpapers \
    openvpn \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml \
    vendor/bcm/prebuild/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/bcm/prebuild/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bcm/prebuild/media/PFFprec_600.emd:system/media/PFFprec_600.emd

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/init.d/10mounts2sd:system/etc/init.d/10mounts2sd \
    vendor/bcm/prebuild/init.d/05hostname:system/etc/init.d/05hostname \
    vendor/bcm/prebuild/init.d/09mkloops:system/etc/init.d/09mkloops \
    vendor/bcm/prebuild/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/bcm/prebuild/init.d/90threshold:system/etc/init.d/90threshold \
    vendor/bcm/prebuild/boot.d/99bash:system/etc/boot.d/99bash

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/dhcpcd/01-configure:system/etc/dhcpcd/dhcpcd.d/01-configure \
    vendor/bcm/prebuild/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/bcm/prebuild/dhcpcd/dhcpcd-hook:system/etc/dhcpcd/dhcpcd-hook

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/etc/bash.bashrc:system/etc/bash.bashrc \
    vendor/bcm/prebuild/etc/gps.conf:system/etc/gps.conf \
    vendor/bcm/prebuild/etc/hostname:system/etc/hostname \
    vendor/bcm/prebuild/etc/hosts:system/etc/hosts \
    vendor/bcm/prebuild/etc/shells:system/etc/shells \
    vendor/bcm/prebuild/etc/SuplRootCert:system/etc/SuplRootCert \
    vendor/bcm/prebuild/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/bcm/prebuild/etc/mkshrc:system/etc/mkshrc

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/bin/sh.bash:system/bin/sh.bash \
    vendor/bcm/prebuild/bin/su.bash:system/bin/su.bash \
    vendor/bcm/prebuild/bin/sysinit:system/bin/sysinit \
    vendor/bcm/prebuild/bin/sh:system/bin/sh \
    vendor/bcm/prebuild/bin/e2fsck:system/bin/e2fsck \
    vendor/bcm/prebuild/bin/fix_permissions:system/bin/fix_permissions

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/xbin/bash:system/xbin/bash

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/lib/libext2_blkid.so:system/lib/libext2_blkid.so \
    vendor/bcm/prebuild/lib/libext2_com_err.so:system/lib/libext2_com_err.so \
    vendor/bcm/prebuild/lib/libext2_e2p.so:system/lib/libext2_e2p.so \
    vendor/bcm/prebuild/lib/libext2fs.so:system/lib/libext2fs.so \
    vendor/bcm/prebuild/lib/libext2_profile.so:system/lib/libext2_profile.so \
    vendor/bcm/prebuild/lib/libext2_uuid.so:system/lib/libext2_uuid.so

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/etc/init.local.rc:system/etc/init.local.rc \
    vendor/bcm/prebuild/bin/compcache:system/bin/compcache \
    vendor/bcm/prebuild/bin/handle_compcache:system/bin/handle_compcache

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
    ro.build.display.id="BCM $(BUILD_VERSION) Update $(BUILD_UPDATE) by DK_Zero-Cool" \
    ro.build.romversion=BCM-$(BUILD_VERSION)U$(BUILD_UPDATE) \
    ro.modversion="BCM $(BUILD_VERSION) Update $(BUILD_UPDATE) by DK_Zero-Cool" \
    ro.cm.version=9.0.0-RC0-$(BUILD_DATE)

# CM Configs
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=yyyy-MM-dd \
    ro.com.android.dataroaming=false

# Get some Gapps
$(call inherit-product-if-exists, gapps/gapps.mk)
