#
# SPDX-FileCopyrightText: The InfinityX Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X6886 device
$(call inherit-product, device/infinix/x6886/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit Lineage compat stubs (fixes IMS NoClassDefFoundError: TelephonyMetrics)
$(call inherit-product, hardware/lineage/compat/frameworks/compat.mk)

PRODUCT_DEVICE := X6886
PRODUCT_NAME := infinity_X6886
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6886
PRODUCT_MANUFACTURER := Infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

ifeq ($(TARGET_BUILD_VARIANT),user)

WITH_GAPPS := true

PRODUCT_PACKAGES += \
    com.google.android.dialer.support \
    GoogleContacts \
    GoogleDialer \
    PrebuiltBugle \
    CalendarGooglePrebuilt \
    PrebuiltGmail \
    Photos \
    Maps

# Share Google Dialer's support library with the framework.
PRODUCT_COPY_FILES += \
    vendor/pixel/gms/common/proprietary/product/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml

# Stock Transsion camera replaces AOSP/Lineage Aperture
PRODUCT_NO_CAMERA := true

## For system, ro.product.name comes from SystemName. For vendor/product/odm, it comes from DeviceProduct.
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=Infinix-X6886 \
    DeviceProduct=X6886-OP \
    SystemName=X6886-OP \
    BuildDesc="sys_mssi_64_64only_cn_armv82-user 16 BP2A.250605.031.A3 185643 release-keys" \
    BuildSystemDesc="sys_mssi_64_64only_cn_armv82-user 16 BP2A.250605.031.A3 185643 release-keys" \
    BuildFingerprint=Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys

else
WITH_GAPPS := false
endif

# Infinity
TARGET_HAS_UDFPS := true
INFINITY_MAINTAINER := "qiratdahaf"
PERF_ANIM_OVERRIDE := true
