#
# Copyright (C) 2023 DerpFest
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from tulip device
$(call inherit-product, device/xiaomi/tulip/device.mk)

# Basic Call Recorder
BUILD_BCR := false

# Pixel Gapps
TARGET_USES_PICO_GAPPS := true

ifeq ($(TARGET_USES_PICO_GAPPS),true)
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    FilesPrebuilt \
    NgaResources \
    Photos \
    PrebuiltBugle \
    Velvet
endif

# Device Info
PRODUCT_NAME := lineage_tulip
PRODUCT_DEVICE := tulip
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Override default Build Fingerprint and Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tulip-user 9 PKQ1.180904.001 V12.0.1.0.PEKMIXM release-keys" \
    BuildFingerprint="xiaomi/tulip/tulip:9/PKQ1.180904.001/V12.0.1.0.PEKMIXM:user/release-keys" \
    BuildKeys=release-keys \
    BuildFlavor=tulip-user \
    BuildVariant=user \
    DeviceProduct=tulip \
    SystemName=tulip
