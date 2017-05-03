#
# Copyright (C) 2017 The LineageOS Project
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
#

LOCAL_PATH := device/google/sprout-common

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true

# Bootloader
TARGET_BOARD_PLATFORM := mt6582
TARGET_NO_BOOTLOADER := true

# kernel
TARGET_KERNEL_SOURCE := kernel/mediatek/sprout
TARGET_KERNEL_CONFIG := lineageos_sprout_defconfig
BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# Audio
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_CAMERA_STUB := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# OpenGL
USE_OPENGL_RENDERER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 956964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/fstab.sprout
TARGET_USERIMAGES_USE_EXT4 :=true

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# System Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(LOCAL_PATH)/sepolicy

# WiFi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM        := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA          := STA
WIFI_DRIVER_FW_PATH_AP           := AP
WIFI_DRIVER_FW_PATH_STA          := P2P
