USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/vivalto5mve3g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := SC7727S

# Assert
TARGET_OTA_ASSERT_DEVICE := vivalto5mve3g,SM-G316HU,G316HU,sc8810,SC7727S

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAG_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/vivalto5mve3g/dt.img
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/vivalto5mve3g/kernel
TARGET_PREBUILT_KERNEL := device/samsung/vivalto5mve3g/kernel
#TARGET_KERNEL_CONFIG := vivalto5mve3g_hw00_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/vivalto5mve3g
#BOARD_USES_UNCOMPRESSED_BOOT := true

TARGET_NO_BOOTLOADER				:= true
TARGET_NO_RADIOIMAGE				:= true

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE			:= 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE		:= 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE		:= 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE		:= 2185232384
BOARD_FLASH_BLOCK_SIZE				:= 131072
TARGET_USERIMAGES_USE_EXT4			:= true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE		:= ext4


# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Recovery
#TARGET_RECOVERY_INITRC := device/samsung/vivalto5mve3g/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/vivalto5mve3g/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_FLIPPED_SCREEN := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/vivalto5mve3g/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/vivalto5mve3g/graphics.c
BOARD_USE_BGRA_8888 := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

#BOARD_HAS_NO_SELECT_BUTTON := true


# SELinux
#BOARD_SEPOLICY_DIRS += \
#    device/samsung/vivalto5mve3g/sepolicy

#BOARD_SEPOLICY_UNION += \
#    file_contexts

# Recovery
#TW_THEME := portrait_hdpi
#TARGET_RECOVERY_FSTAB := device/samsung/vivalto5mve3g/twrp.fstab
#BOARD_HAS_LARGE_FILESYSTEM := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#DEVICE_RESOLUTION := 480x800
#SP1_NAME := "internal_sd"
#SP1_BACKUP_METHOD := files
#SP1_MOUNTABLE := 1
#TW_INTERNAL_STORAGE_PATH := "/data/media/0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := "/storage/sdcard1"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_FLASH_FROM_STORAGE := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
#TW_NO_REBOOT_BOOTLOADER := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

# don't take forever to wipe
BOARD_SUPPRESS_SECURE_ERASE := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
