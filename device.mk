#
# Copyright (C) 2024-2025 The Android Open Source Project
# Copyright (C) 2024-2025 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Userdata
PRODUCT_FS_COMPRESSION := 1

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# oem otacerts
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/realmelocal \
    $(DEVICE_PATH)/security/realmespecial
