#############################################################################
#                                                                           #
#     Acer liquid build file, based on codeaurora tree qsd8250_ffa          #
#                                                                           #
#     Created by Koudelka and xian1243                                      #
#                                                                           #
#############################################################################
#PRODUCT_COPY_FILES := \
#    device/acer/liquid/init.salsa.rc:root/init.salsa.rc

# Packages to include
PRODUCT_PACKAGES += \
        com.android.future.usb.accessory \
	lights.salsa \
	gps.salsa \
        libcamera \
	rzscontrol \
	dexpreopt \

# OMX
PRODUCT_PACKAGES += \
        libstagefrighthw \
        libOmxCore \
        libmm-omxcore \
        libOmxVdec \
        libOmxVidEnc

# GPU
PRODUCT_PACKAGES += \
        gralloc.qsd8k \
        copybit.qsd8k \
        camera.qsd8k \
        hwcomposer.qsd8k \
        libQcomUI \
        libtilerenderer \
        liboverlay \
        librs_jni

#Audio
PRODUCT_PACKAGES += \
        audio.a2dp.default \
        audio_policy.salsa \
        audio.primary.salsa

# proprietary side of the device
$(call inherit-product-if-exists, vendor/acer/liquid/liquid-vendor.mk)

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES := en

# Passion uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Check generic.mk/languages_full.mk to see what applications/languages are installed turns out all languages get included if I don't specify, but some seem to be missing the actuall translation.
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := device/acer/liquid/overlay

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
 frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distict.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


$(call inherit-product-if-exists, device/acer/liquid/KernelModules.mk)

$(call inherit-product-if-exists, device/acer/liquid/LiquidProprietary.mk)


## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
# Additional settings used in AOSP builds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
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
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.checkjni=false \
    debug.sf.hw=1 \
    ro.compcache.default=0 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    BUILD_UTC_DATE=0 \
    persist.ro.ril.sms_sync_sending=1 \
    ro.camera.hd_shrink_vf_enabled=1

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
    windowsmgr.max_events_per_sec=260

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
    dalvik.vm.heapsize=48m

# Overrides
PRODUCT_BRAND := acer
PRODUCT_NAME := cm_liquid
PRODUCT_DEVICE := liquid
PRODUCT_MODEL := A1
PRODUCT_MANUFACTURER := Acer
