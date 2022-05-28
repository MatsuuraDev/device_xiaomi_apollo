#
# Copyright (C) 2022 PixelPlusUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelPlusUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
WITH_GAPPS := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080

# PixelPlusUI Official Stuff
CUSTOM_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := AGMAD
BUILD_HOSTNAME := AGMAD-MACHINE

# PixelPlusUI Maintainer Flags
PPUI_MAINTAINER := Agmad

# Supported Device Flags
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

# Inherit from apollon device
$(call inherit-product, device/xiaomi/apollon/device.mk)

PRODUCT_NAME := aosp_apollon
PRODUCT_DEVICE := apollon
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_eea-user 12 RKQ1.211001.001 V13.0.6.0.SJDEUXM release-keys"

BUILD_FINGERPRINT := Redmi/apollo_eea/apollo:12/RKQ1.211001.001/V13.0.6.0.SJDEUXM:user/release-keys
