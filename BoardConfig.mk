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

-include vendor/acer/salsa/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := salsa
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
#DEBUG_V8 := true

BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WLAN_DEVICE           := bcm4325
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH := "/etc/wifi/BCM4325.bin"
WIFI_DRIVER_FW_AP_PATH := "/etc/wifi/BCM4325_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/etc/wifi/BCM4325.bin nvram_path=/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "bcm4329"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_PMEM := true
BOARD_USES_QCOM_HARDWARE := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := salsa
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_USES_QCOM_GPS := true
TARGET_USES_OLD_LIBSENSORS_HAL := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
BOARD_CUSTOM_USB_CONTROLLER := ../../device/acer/salsa/UsbController.cpp

BOARD_HAS_NO_MISC_PARTITION := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/acer/salsa/recovery/recovery_ui.c

#TARGET_PREBUILT_KERNEL := device/acer/salsa/kernel
TARGET_KERNEL_CONFIG := cyanogen_salsa_defconfig
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_KERNEL_CMDLINE := console=null
BOARD_EGL_CFG := vendor/acer/salsa/proprietary/egl.cfg

