#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/munch-miuicamera

# Permissions
PRODUCT_COPY_FILES += \
    device/xiaomi/munch-miuicamera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    device/xiaomi/munch-miuicamera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    device/xiaomi/munch-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Device-Features
PRODUCT_COPY_FILES += \
     device/xiaomi/munch-miuicamera/configs/device_features/munch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/munch.xml \
     device/xiaomi/munch-miuicamera/configs/device_features/munch.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/munch.xml

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.notch=1 \
    ro.product.mod_device=munch

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xiaomi/munch-miuicamera/sepolicy/vendor

$(call inherit-product, vendor/xiaomi/munch-miuicamera/munch-miuicamera-vendor.mk)
