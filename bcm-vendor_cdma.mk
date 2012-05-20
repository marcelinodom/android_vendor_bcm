# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

$(call inherit-product, vendor/bcm/bcm-vendor.mk)
