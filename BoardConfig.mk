#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
-include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00TD

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ASUS_X00TD,X00TD,X00T

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm636

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := X00TD_defconfig

# Inherit the proprietary files
-include vendor/asus/X00TD/BoardConfigVendor.mk

#Broken Rules
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true
BUILD_BROKEN_DUP_RULES := true
