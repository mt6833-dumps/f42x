#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from f42x device
$(call inherit-product, device/samsung/f42x/device.mk)

PRODUCT_DEVICE := f42x
PRODUCT_NAME := omni_f42x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E426S
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="f42xskt-user 12 SP1A.210812.016 E426SKSS7DXH1 release-keys"

BUILD_FINGERPRINT := samsung/f42xskt/f42x:12/SP1A.210812.016/E426SKSS7DXH1:user/release-keys
