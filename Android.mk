#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),Power_Armor_18)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
