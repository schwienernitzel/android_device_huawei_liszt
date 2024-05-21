#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/huawei/hi3635
ALLOW_MISSING_DEPENDENCIES = true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_BOARD_PLATFORM := hi3635
BOARD_VENDOR_PLATFORM := hi3635

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HIGH_OPTIMIZATION := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi3635
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_BASE := 0x00678000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := mem=3072M coherent_pool=512K mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmback),p17(modem_om),p20(modemnvm_update),p30(modem),p31(modem_dsp),p32(dfx),p33(3rdmodem) androidboot.selinux=permissive ate_enable=true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07588000 --tags_offset 0xffb88000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11448352768
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true

TW_EXCLUDE_SUPERSU := true

TW_INPUT_BLACKLIST := "accelerometer"
DEVICE_RESOLUTION := 1200x1920

TW_FBIOPAN := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_BRIGHTNESS_PATH := $(BACKLIGHT_PATH)
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
