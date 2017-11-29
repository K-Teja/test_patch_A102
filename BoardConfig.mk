USE_CAMERA_STUB := true

DEVICE_FOLDER := device/Micromax/A102

# Platform
TARGET_BOARD_PLATFORM := mt6572
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := A102

# Kernel 
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/Micromax/A102/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/Micromax/A102/bootimg.mk
BOARD_CUSTOM_BOOTIMG := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6453985280
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SUPPRESS_EMMC_WIPE := true 
TARGET_PREBUILT_KERNEL := device/Micromax/A102/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#CWM and CTR Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery.fstab

BOARD_HAS_MTK := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
DEVICE_RESOLUTION := 480x800

#TWRP
TW_THEME := portrait_hdpi
#TARGET_RECOVERY_INITRC := $(DEVICE_FOLDER)/recovery/recovery.twrp.rc
#TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.twrp.fstab
RECOVERY_VARIANT := twrp
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
TW_THEME := portrait_mdpi
TW_NO_EXFAT_FUSE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_PIXEL_FORMAT := "BRGA_8888"
DEVICE_RESOLUTION := 480x800
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp


# EGL settings
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true
# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=1 \
persist.sys.usb.config=mass_storage,adb \
ro.mount.fs=EXT4
