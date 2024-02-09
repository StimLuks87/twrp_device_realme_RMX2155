#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2155L1 device
$(call inherit-product, device/realme/RMX2155/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from TWRP-common stuff, if building TWRP.
#$(call inherit-product, vendor/twrp/config/common.mk)

# Device Information
PRODUCT_DEVICE := RMX2155
PRODUCT_NAME := pb_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := RMX2155
PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2155L1 \
    PRODUCT_NAME=RMX2155	
