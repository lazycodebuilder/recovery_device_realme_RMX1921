#
# Copyright (C) 2024-2025 The Android Open Source Project
# Copyright (C) 2024-2025 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX1921,RMX1921EX,RMX1921EU,RMX1921EUEX,RMX1921CN,nicky

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Platform
TARGET_BOARD_PLATFORM := sdm710
TARGET_BOARD_PLATFORM_GPU := qcom-adreno616
QCOM_BOARD_PLATFORMS += $(TARGET_BOARD_PLATFORM)

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 swiotlb=1 loop.max_part=7 printk.devkmsg=on kpti=off
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)

BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Partitions Sizes
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55141412864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5435817984
BOARD_VENDORIMAGE_PARTITION_SIZE := 1660944384
BOARD_ODMIMAGE_PARTITION_SIZE := 268435456

# Partitions FileTypes
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

# Workaround for error copying vendor,odm files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_ODM := odm

# includes make_ext4 to support userdata partition in ext4
TARGET_USERIMAGES_USE_EXT4 := true

# includes make_f2fs to support userdata partition in f2fs
TARGET_USERIMAGES_USE_F2FS := true

# Enables proper handling of /data/media
RECOVERY_SDCARD_ON_DATA := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Add root folders
BOARD_ROOT_EXTRA_FOLDERS := firmware persist

# Enable Android Verified Boot (AVB)
BOARD_AVB_ENABLE := true

# Enable AVB for the recovery image
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Decryption support for /data
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
TW_USE_FSCRYPT_POLICY := 1

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2127-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# Add properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# MISC FLAGS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file

# Fixes wrong theme color
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# TWRP Configuration
TW_THEME := portrait_hdpi

# Add TW_DEVICE_VERSION
TW_DEVICE_VERSION := v0.1.0 | LazymeaoProjects

# All language packs
TW_EXTRA_LANGUAGES := true

# Brightness flags
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel0-backlight/brightness
TW_MAX_BRIGHTNESS := 1023
TW_DEFAULT_BRIGHTNESS := 40

# CPU temp sysfs path, if it is zero all the time
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone10/temp

# Calculate the system date and time
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Battery
TW_USE_LEGACY_BATTERY_SERVICES := true

# Statusbar icons flags
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := 40
TW_CUSTOM_CLOCK_POS := 300
TW_CUSTOM_BATTERY_POS := 810

# Use mke2fs for formatting ext4 partitions
TARGET_USES_MKE2FS := true

# For mounting NTFS
TW_INCLUDE_NTFS_3G := true

# Blacklist certain input devices that might break touch in TWRP
TW_INPUT_BLACKLIST := hbtp_vm

# Add support of able to wake with touch after sleep
TW_NO_SCREEN_BLANK := true

# Logical partitions
TW_INCLUDE_LOGICAL := my_carrier my_company my_custom my_engineering my_heytap my_manifest my_preload my_product my_region my_stock my_version

# EDL Mode (qcom)
TW_HAS_EDL_MODE := true

# Fastbootd
TW_INCLUDE_FASTBOOTD := true

# Toolbox binaries
TW_USE_TOOLBOX := true

# Python binary
TW_INCLUDE_PYTHON := true

# Skip compatibility packages
TW_SKIP_COMPATIBILITY_CHECK := true

# ozip decrypt key
TW_OZIP_DECRYPT_KEY := 1c4c1ea3a12531ae491b21bb31613c11

# Include resetprop binary from the Magisk tools kit to the assembly
TW_INCLUDE_RESETPROP := true

# Include libresetprop binaries
TW_INCLUDE_LIBRESETPROP := true

# Include magiskboot for repacking bootimg
TW_INCLUDE_REPACKTOOLS := true

# Don't mount apex files (no need for now)
TW_EXCLUDE_APEX := true

# Use our own USB config
TW_EXCLUDE_DEFAULT_USB_INIT := true

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd
TARGET_RECOVERY_DEVICE_MODULES += strace
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/strace

# Log touch input
TWRP_EVENT_LOGGING := true