# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries

## (1) Copy Configuration files
PRODUCT_COPY_FILES += \
    device/acer/salsa/proprietary/vold.fstab:system/etc/vold.fstab \
    device/acer/salsa/proprietary/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/salsa/proprietary/sysctl.conf:system/etc/sysctl.conf \
    device/acer/salsa/proprietary/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/acer/salsa/proprietary/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/acer/salsa/proprietary/copybit.qsd8k.so:system/lib/hw/copybit.qsd8k.so \
    device/acer/salsa/proprietary/hwcomposer.qsd8k.so:system/lib/hw/hwcomposer.qsd8k.so \
    device/acer/salsa/proprietary/GooManager.apk:system/app/GooManager.apk

## (2) Keypad and Touchscreen
PRODUCT_COPY_FILES += \
    device/acer/salsa/proprietary/a1-keypad.kcm:system/usr/keychars/a1-keypad.kcm \
    device/acer/salsa/proprietary/a1-keypad.kl:system/usr/keylayout/a1-keypad.kl \
    device/acer/salsa/proprietary/avr.kl:system/usr/keylayout/avr.kl \
    device/acer/salsa/proprietary/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/acer/salsa/proprietary/auo-touch.idc:system/usr/idc/auo-touch.idc

## (3) Ramdisk
PRODUCT_COPY_FILES += \
    device/acer/salsa/proprietary/init.salsa.rc:root/init.salsa.rc \
    device/acer/salsa/proprietary/init.salsa.usb.rc:root/init.salsa.usb.rc \
    device/acer/salsa/proprietary/ueventd.salsa.rc:root/ueventd.salsa.rc \
    device/acer/salsa/proprietary/initlogo.rle:root/initlogo.rle

## (4) Init scripts
PRODUCT_COPY_FILES += \
    device/acer/salsa/proprietary/01sysctl:system/etc/init.d/01sysctl \
    device/acer/salsa/proprietary/03swaps:system/etc/init.d/03swaps \
    device/acer/salsa/proprietary/05mountext:system/etc/init.d/05mountext \
    device/acer/salsa/proprietary/10apps2sd-redux:system/etc/init.d/10apps2sd

## (5) App2sd
PRODUCT_COPY_FILES += \
    device/acer/salsa/proprietary/profile:system/etc/profile \
    device/acer/salsa/proprietary/a2sd:system/bin/a2sd \
    device/acer/salsa/proprietary/fix_permissions:system/bin/fix_permissions \
    device/acer/salsa/proprietary/zipalign:system/xbin/zipalign

## (6) Compcache
PRODUCT_COPY_FILES += \
    device/acer/salsa/proprietary/rzscontrol:/system/xbin/rzscontrol    
