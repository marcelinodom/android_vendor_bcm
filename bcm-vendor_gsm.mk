# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/etc/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/bcm/prebuild/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

$(call inherit-product, vendor/bcm/bcm-vendor.mk)