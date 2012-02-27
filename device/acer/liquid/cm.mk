# Inherit AOSP device configuration for passion.
$(call inherit-product, device/acer/liquid/liquid.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BRAND := acer
PRODUCT_NAME := cm_liquid
PRODUCT_DEVICE := liquid
PRODUCT_MODEL := A1
PRODUCT_MANUFACTURER := Acer
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=liquid BUILD_ID=ITL41F \
BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys \
PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := A1
PRODUCT_VERSION_DEVICE_SPECIFIC := -thepasto-$(shell date +%m%d%Y)

PRODUCT_PACKAGES += \
    Camera
#    UsbMassStorage
#    CMSettings \

# Get eng stuff on our userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
