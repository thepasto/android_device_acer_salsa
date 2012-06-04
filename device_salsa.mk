$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/acer/salsa/salsa-vendor.mk)

# Packages to include
PRODUCT_PACKAGES += \
	librs_jni \
	screencap \
	lights.salsa \
	copybit.salsa \
	gralloc.salsa \
	gps.salsa \
	libcamera \
	rzscontrol \
	libmm-omxcore \
	libOmxVdec \
    	libOmxVidEnc \
	com.android.future.usb.accessory

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

# Liquid uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := device/acer/salsa/overlay

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml


## (1) Copy Configuration files
PRODUCT_COPY_FILES += \
    device/acer/salsa/vold.fstab:system/etc/vold.fstab \
    device/acer/salsa/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/salsa/sysctl.conf:system/etc/sysctl.conf \
    device/acer/salsa/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/acer/salsa/prebuilt/init.salsa.rc:root/init.salsa.rc \
    device/acer/salsa/prebuilt/ueventd.salsa.rc:root/ueventd.salsa.rc \
    device/acer/salsa/recovery.fstab:root/recovery.fstab \
    device/acer/salsa/prebuilt/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
    device/acer/salsa/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/acer/salsa/prebuilt/cifs.ko:system/lib/modules/cifs.ko \
    device/acer/salsa/prebuilt/ramzswap.ko:system/lib/modules/ramzswap.ko \
    device/acer/salsa/prebuilt/tun.ko:system/lib/modules/tun.ko \
    device/acer/salsa/prebuilt/03swaps:system/etc/init.d/03swaps \
    device/acer/salsa/prebuilt/05mountext:system/etc/init.d/05mountext \
    device/acer/salsa/prebuilt/10apps2sd:system/etc/init.d/10apps2sd \
    device/acer/salsa/prebuilt/a2sd:system/bin/a2sd \
    device/acer/salsa/prebuilt/fix_permissions:system/bin/fix_permissions \
    device/acer/salsa/prebuilt/zipalign:system/bin/zipalign 

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/acer/salsa/salsa-vendor.mk)


## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
# Additional settings used in AOSP builds
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.sf.lcd_density=240 \
    rild.libpath=/system/lib/libril-acer-1.so \
    rild.libargs=-d /dev/smd0 \
    persist.radio.skippable.mcclist=466,505 \
    persist.cust.tel.eons=1 \
    persist.ril.ecclist=000,08,110,112,118,119,911,999 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.dexopt-flags=v=n,o=v \
    debug.sf.hw=1 \
    ro.com.google.locationfeatures=1 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1

# Acer specific proximity sensor calibration
PRODUCT_PROPERTY_OVERRIDES += \
    hw.acer.psensor_calib_max_base=32717 \
    hw.acer.psensor_calib_min_base=32716 \
    hw.acer.psensor_thres=500 \
    hw.acer.psensor_mode=1 

# Acer hardware revision
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hw_version=6

# Speed up scrolling
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=120

# Default network type.
# 0 => WCDMA preferred, 3 => GSM/AUTO (PRL) preferred
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=3

# WiFi configuration
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=180

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# This is a high density device with more memory, so larger vm heaps for it.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=48m \
    persist.android.strictmode=0 \
    persist.sys.scrollingcache=2


# Overrides
PRODUCT_BRAND := acer
PRODUCT_NAME := salsa
PRODUCT_DEVICE := salsa
PRODUCT_MODEL := Liquid
PRODUCT_MANUFACTURER := Acer
