# Release name
PRODUCT_RELEASE_NAME := A102

# Inherit device configuration
$(call inherit-product, device/Micromax/A102/device_A102.mk)

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A102
PRODUCT_NAME := omni_A102
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := Micromax A102
PRODUCT_MANUFACTURER := Micromax
