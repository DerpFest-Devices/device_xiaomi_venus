#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Derp variables
IS_PHONE := true
TARGET_GAPPS_ARCH = arm64
TARGET_BOOT_ANIMATION_RES := 1440
DERP_BUILDTYPE := Official

PRODUCT_NAME := derp_venus
PRODUCT_DEVICE := venus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2011K2C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := "Xiaomi/venus/venus:11/RKQ1.200928.002/V12.5.13.0.RKBCNXM:user/release-keys"
