#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from msm8909w device
$(call inherit-product, device/cmcc/msm8909w/device.mk)

PRODUCT_DEVICE := msm8909w
PRODUCT_NAME := omni_msm8909w
PRODUCT_BRAND := CMCC
PRODUCT_MODEL := CMCC-W1A
PRODUCT_MANUFACTURER := cmcc

PRODUCT_GMS_CLIENTID_BASE := android-cmcc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8909w-user 7.1.1 NMF26F eng.zwb.20200623.140612 test-keys"

BUILD_FINGERPRINT := CMCC/w1a/w1a:7.1.1/NMF26F/zwb06231406:user/test-keys
