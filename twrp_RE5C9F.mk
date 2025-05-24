#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RE5C9F device
$(call inherit-product, device/realme/RE5C9F/device.mk)

PRODUCT_DEVICE := RE5C9F
PRODUCT_NAME := twrp_RE5C9F
PRODUCT_BRAND := realme
PRODUCT_MODEL := ums9230_hulk_Natv
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true
