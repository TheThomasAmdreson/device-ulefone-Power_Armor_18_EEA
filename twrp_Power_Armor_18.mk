#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure virtual_ab_ota.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable userspace reboot
$(call inherit-product, $(SRC_TARGET_DIR)/product/userspace_reboot.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Power_Armor_18 device
$(call inherit-product, device/ulefone/Power_Armor_18/device.mk)

PRODUCT_DEVICE := Power_Armor_18
PRODUCT_NAME := twrp_Power_Armor_18
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Power Armor 18
PRODUCT_MANUFACTURER := Ulefone

PRODUCT_GMS_CLIENTID_BASE := android-gotron

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Power_Armor_18 \
    PRODUCT_NAME=Power_Armor_18_EEA \
    PRIVATE_BUILD_DESC="vnd_k6877v1_64_k419-user 12 SP1A.210812.016 1rck61v164bspP51 release-keys"
BUILD_FINGERPRINT := Ulefone/Power_Armor_18_EEA/Power_Armor_18:12/SP1A.210812.016/1699882889:user/release-keys
