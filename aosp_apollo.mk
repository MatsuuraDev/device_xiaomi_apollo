#
# Copyright (C) 2022 PixelPlusUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common VoidUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
WITH_GAPPS := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080

# VoidUI Official Stuff
CUSTOM_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := AGMAD
BUILD_HOSTNAME := AGMAD-MACHINE

# VoidUI Maintainer Flags
VOID_MAINTAINER := Agmad

# Supported Device Flags (Gapps Specific flags)
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

PRODUCT_NAME := aosp_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 12 RKQ1.211001.001 V13.0.5.0.SJDMIXM release-keys"

BUILD_FINGERPRINT := Redmi/apollo_global/apollo:12/RKQ1.211001.001/V13.0.5.0.SJDMIXM:user/release-keys
