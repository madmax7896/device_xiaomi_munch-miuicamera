# android_device_xiaomi_munch-miuicamera

Prebuilt stock MIUI/Leica Camera for Poco F4/Redmi K40S (munch), to include in custom ROM builds.

Extracted from munch MIUI package (refer proprietary-files.txt for version).

### How to use?

1. Clone this repo to `device/xiaomi/munch-miuicamera`

2. Inherit it from `device.mk` in device tree:

```
# Camera
$(call inherit-product-if-exists, device/xiaomi/munch-miuicamera/config.mk)
```

3. Ensure that required properties are set:

```
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera
```
