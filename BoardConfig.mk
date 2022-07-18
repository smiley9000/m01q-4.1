#
# Copyright 2018 The Android Open Source Project
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

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true


# Platform
BOARD_USES_QCOM_HARDWARE := true

# System as root
BOARD_ROOT_EXTRA_FOLDERS := cache carrier efs keydata keyrefuge optics prism

# Bootloader
PRODUCT_PLATFORM := msm8937
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/m01q/prebuilt/Image.gz
TARGET_PREBUILT_DTB := device/samsung/m01q/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := device/samsung/m01q/prebuilt/recoverydtbo
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505
QCOM_BOARD_PLATFORMS += msm8937

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=300M androidboot.usbconfigfs=true androidboot.selinux=permissive
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_DTB_OFFSET := 0x101f00000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) 
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION) --pagesize $(BOARD_KERNEL_PAGESIZE) --board "SRPSJ30A001"
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB) --dtb_offset $(BOARD_DTB_OFFSET)
# Avb


# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 3945791488
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 3945791488
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

BOARD_SUPPRESS_SECURE_ERASE := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone18/temp

# Crypto
BOARD_USES_QCOM_FBE_DECRYPTION := true
BOARD_USES_METADATA_PARTITION := true

BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

