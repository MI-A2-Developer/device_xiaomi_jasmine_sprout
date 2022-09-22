#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from jasmine_sprout device
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI A2
PRODUCT_NAME := cherish_jasmine_sprout

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := wayne

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys"

BUILD_FINGERPRINT := "xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"
