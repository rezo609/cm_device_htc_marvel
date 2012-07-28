PRODUCT_RELEASE_NAME := CYANOGENMOD

# Set date
NOW=$(shell date +"%d-%m-%Y")

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/htc/marvel/device_marvel.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := marvel
PRODUCT_NAME := cm_marvel
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S
PRODUCT_MANUFACTURER := HTC
PRODUCT_VERSION_DEVICE_SPECIFIC := -CYANOGENMOD-10-NIGHTLY-$(NOW)

# CM_RELEASE := true
CM_BUILDTYPE := NIGHTLY
CM_EXTRAVERSION := CM-10-NIGHTLY-$(NOW)

BUILD_ID := BENJAMINGWYNN-CM-$(NOW)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cm/htc_marvel/marvel:4.1/cm$(BUILD_ID)/0.1:user/release-keys PRIVATE_BUILD_DESC="0.1 benjamingwynn release-keys"
