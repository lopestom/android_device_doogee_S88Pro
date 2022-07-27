PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from X30 device
$(call inherit-product, device/doogee/S88Pro/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
#$(call inherit-product, vendor/twrp/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := S88Pro
PRODUCT_NAME := twrp_S88Pro
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := S88Pro
PRODUCT_MANUFACTURER := DOOGEE
PRODUCT_RELEASE_NAME := DOOGEE S88Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=S88Pro \
    PRODUCT_NAME=S88Pro_EEA \
    PRIVATE_BUILD_DESC="S88Pro_EEA-user 10 QP1A.190711.020 1627610974 release-keys"

BUILD_FINGERPRINT := DOOGEE/S88Pro_EEA/S88Pro:10/QP1A.190711.020/1627610974:user/release-keys

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1
