#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from p11_pro_plus device
$(call inherit-product, device/lenovo/p11_pro_plus/device.mk)

PRODUCT_DEVICE := p11_pro_plus
PRODUCT_NAME := omni_p11_pro_plus
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J716F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LenovoTB-J716F_PRC-user 12 SKQ1.220213.001 14.0.107_220929 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-J716F_PRC/J716F:12/SKQ1.220213.001/14.0.107_220929:user/release-keys
