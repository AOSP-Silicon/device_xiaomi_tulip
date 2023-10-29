#
# Copyright (C) 2023 DerpFest
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Octavi stuff
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Inherit from tulip device
$(call inherit-product, device/xiaomi/tulip/device.mk)

# Gapps
WITH_GAPPS := true

# Maintainer
OCTAVI_MAINTAINER := GhostMaster69-dev

# Device Info
PRODUCT_NAME := octavi_tulip
PRODUCT_DEVICE := tulip
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Override Product Name
PRODUCT_SYSTEM_NAME := tulip
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Override default Build Fingerprint and Description
BUILD_FINGERPRINT := xiaomi/tulip/tulip:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date -u +%s):user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_FLAVOR=tulip-user \
    TARGET_BUILD_TYPE=user \
    PRIVATE_BUILD_DESC="tulip-user $(PLATFORM_VERSION) $(BUILD_ID) $(shell date -u +%s) release-keys"

# Spoof fingerprint for Google Play Services and SafetyNet
PRODUCT_OVERRIDE_GMS_FINGERPRINT := "xiaomi/tulip/tulip:8.1.0/OPM1.171019.011/V10.2.2.0.OEKMIXM:user/release-keys"
