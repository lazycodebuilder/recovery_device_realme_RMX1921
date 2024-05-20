#
# Copyright (C) 2024-2025 The Android Open Source Project
# Copyright (C) 2024-2025 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX1921
PRODUCT_NAME := twrp_RMX1921
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme XT
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := RMX1921

# Default device path for tree
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)

# Configure twrp common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure gsi_keys.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
