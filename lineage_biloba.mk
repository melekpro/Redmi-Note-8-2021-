#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from biloba device
$(call inherit-product, device/xiaomi/biloba/device.mk)

PRODUCT_DEVICE := biloba
PRODUCT_NAME := lineage_biloba
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := biloba
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="biloba-user 11 RP1A.200720.011 V12.5.7.0.RCURUXM release-keys"

BUILD_FINGERPRINT := Redmi/biloba_ru/biloba:11/RP1A.200720.011/V12.5.7.0.RCURUXM:user/release-keys
