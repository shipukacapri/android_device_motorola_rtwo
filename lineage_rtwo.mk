#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

# AxionOS Flags
AXION_MAINTAINER := Shipu
AXION_PROCESSOR := Snapdragon_8_Gen2
TARGET_BOOT_ANIMATION_RES := 1080
AXION_CAMERA_REAR_INFO := 50,50,12
AXION_CAMERA_FRONT_INFO := 60
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 15 V1TRS35H.60-33-7 2590e-1eb53d release-keys" \
    BuildFingerprint=motorola/rtwo_g/rtwo:15/V1TRS35H.60-33-7/2590e-1eb53d:user/release-keys \
    DeviceProduct=rtwo_g
