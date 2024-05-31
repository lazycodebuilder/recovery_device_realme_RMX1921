# Set the locale to ensure consistent behavior and character encoding
export LC_ALL="C.UTF-8"


## Build settings
# Use TWRP's recovery image builder
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
# Target architecture is arm64
export TARGET_ARCH=arm64
# Maintainer's name
export OF_MAINTAINER="LazymeaoProjects"
# Version of OrangeFox
export FOX_VERSION="v0.1.0"
# Android variant compatibility
export FOX_VARIANT="A14"
# Build type is stable
export FOX_BUILD_TYPE="Stable"


## Decryption settings
# Do not reload after decryption
export OF_NO_RELOAD_AFTER_DECRYPTION=1
# Run post-format processes
export OF_RUN_POST_FORMAT_PROCESS=1
# Fix decryption on data media
export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
# Keep DM Verity and forced encryption
export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
# Enable filesystem compression
export OF_ENABLE_FS_COMPRESSION=1


## Screen notch and status bar settings
# Screen height
export OF_SCREEN_H=2340
# Status bar height
export OF_STATUS_H=100
# Status bar left indent
export OF_STATUS_INDENT_LEFT=48
# Status bar right indent
export OF_STATUS_INDENT_RIGHT=48
# Clock position (top right)
export OF_CLOCK_POS=1
# Do not allow disabling of navbar
export OF_ALLOW_DISABLE_NAVBAR=0
# Hide notch
export OF_HIDE_NOTCH=1


## Reduce OrangeFox size
# Remove aapt tool to reduce size
export FOX_REMOVE_AAPT=1
# Remove busybox binary to reduce size
export FOX_REMOVE_BUSYBOX_BINARY=1
# Delete AromaFM to reduce size
export FOX_DELETE_AROMAFM=1
# Delete Magisk addon to reduce size
export FOX_DELETE_MAGISK_ADDON=1


## Compatibility and feature settings
# Do not check Treble compatibility
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
# Do not show MIUI patch warning
export OF_NO_MIUI_PATCH_WARNING=1
# Disable MIUI-specific features
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
# Remove Samsung-specific features
export FOX_NO_SAMSUNG_SPECIAL=1
# Disable App Manager
export FOX_DISABLE_APP_MANAGER=1


## Device settings
# Alternative device names
export TARGET_DEVICE_ALT="RMX1921,RMX1921EX,RMX1921EU,RMX1921EUEX,RMX1921CN,nicky"
# Include quick backup list for restoring critical partitions
export OF_QUICK_BACKUP_LIST="/rboot;"
# Enable TWRP compatibility mode
export OF_TWRP_COMPATIBILITY_MODE=1
# Use TWRP's SAR detection
export OF_USE_TWRP_SAR_DETECT=1
# Check overwrite attempts
export OF_CHECK_OVERWRITE_ATTEMPTS=1
# Enable advanced security features
export OF_ADVANCED_SECURITY=1
# Skip OrangeFox process
export OF_SKIP_ORANGEFOX_PROCESS=1
# Disable auto reboot after installation
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
# Support OZIP decryption
export OF_SUPPORT_OZIP_DECRYPTION=1


## Tools
# Use bash shell
export FOX_USE_BASH_SHELL=1
# Use ash as bash
export FOX_ASH_IS_BASH=1
# Use tar binary
export FOX_USE_TAR_BINARY=1
# Use sed binary
export FOX_USE_SED_BINARY=1
# Use xz utilities
export FOX_USE_XZ_UTILS=1
# Replace toolbox getprop with full getprop
export FOX_REPLACE_TOOLBOX_GETPROP=1
# Use nano editor
export FOX_USE_NANO_EDITOR=1
# Enable LP tools
export OF_ENABLE_LPTOOLS=1
