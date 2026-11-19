# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X6886 device
$(call inherit-product, device/infinix/x6886/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := x6886
PRODUCT_NAME := lineage_x6886
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6886
PRODUCT_MANUFACTURER := Infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=Infinix-X6886 \
    DeviceProduct=X6886-OP \
    SystemName=X6886-OP \
    BuildDesc="sys_mssi_64_64only_cn_armv82-user 16 BP2A.250605.031.A3 185643 release-keys" \
    BuildSystemDesc="sys_mssi_64_64only_cn_armv82-user 16 BP2A.250605.031.A3 185643 release-keys" \
    BuildFingerprint=Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys
