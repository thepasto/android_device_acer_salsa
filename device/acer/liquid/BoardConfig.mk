# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# config.mk
#
# Product-specific compile-time definitions.
#
#######   for use when building CyanogenMod
USE_CAMERA_STUB := false
#######
 
# Call headers from msm-3.0: needed to build libs in hardware/qcom/display
TARGET_SPECIFIC_HEADER_PATH := device/acer/liquid/include
 
TARGET_BOOTLOADER_BOARD_NAME := salsa
TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
 
# QSD8250
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
 
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
 
# Neon stuff
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A_BUG := true
ARCH_ARM_HAVE_NEON := true
 
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/etc/firmware/BCM4325.bin"
WIFI_DRIVER_FW_PATH_AP      := "/etc/firmware/BCM4325_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/etc/wifi/BCM4325.bin nvram_path=/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_USES_GENERIC_AUDIO := false
 
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_FM_RADIO := false
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_HARDWARE := true
 
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60


BOARD_EGL_CFG := device/acer/liquid/proprietary/egl.cfg
 
# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := salsa
 
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
TARGET_PROVIDES_LIBAUDIO := true
 
#sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

#boot
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096

#mmc
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

#recovery
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/acer/liquid/recovery/recovery_keys.c
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"

#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
#BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0

#BOARD_CUSTOM_USB_CONTROLLER := ../../device/acer/liquid/UsbController.cpp
