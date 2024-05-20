#
# Copyright (C) 2024-2025 The Android Open Source Project
# Copyright (C) 2024-2025 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), RMX1921)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
