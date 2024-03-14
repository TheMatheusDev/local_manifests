#!/bin/bash

# <!-- QCOM/COMMON device and vendor dependencies -->
rm -rf device/qcom/common-sepolicy
git clone https://github.com/TheMatheusDev/device_qcom_common-sepolicy.git -b uvite --depth=1 device/qcom/common-sepolicy

# YOU NEED TO CHANGE THE BELOW FILES TO YOUR MATCH YOUR ROM NAME!
# device/qcom/common/common.mk, device/qcom/common/BoardConfigQcom.mk
rm -rf device/qcom/common
git clone https://github.com/TheMatheusDev/device_qcom_common.git -b fourteen --depth=1 device/qcom/common

rm -rf device/qcom/qssi
git clone https://github.com/TheMatheusDev/android_device_qcom_qssi.git -b uvite --depth=1 device/qcom/qssi

# Additional repositories
rm -rf device/qcom/wlan
git clone https://github.com/PixelExperience-Devices/device_qcom_wlan.git -b fourteen --depth=1 device/qcom/wlan

rm -rf vendor/qcom/common
git clone https://github.com/TheMatheusDev/vendor_qcom_common.git -b fourteen --depth=1 vendor/qcom/common

rm -rf vendor/qcom/opensource/core-utils
git clone https://github.com/TheMatheusDev/android_vendor_qcom-opensource_core-utils.git -b uvite --depth=1 vendor/qcom/opensource/core-utils



rm -rf vendor/qcom/opensource/commonsys-intf/display
git clone https://github.com/TheMatheusDev/android_vendor_qcom_opensource_commonsys-intf_display.git -b uvite --depth=1 vendor/qcom/opensource/commonsys-intf/display

rm -rf vendor/qcom/opensource/commonsys-intf/bluetooth
git clone https://github.com/AOSPA/android_vendor_qcom-opensource_bluetooth-commonsys-intf.git -b uvite --depth=1 vendor/qcom/opensource/commonsys-intf/bluetooth

rm -rf vendor/qcom/opensource/commonsys/display
git clone https://github.com/AOSPA/android_vendor_qcom-opensource_display-commonsys.git -b uvite --depth=1 vendor/qcom/opensource/commonsys/display

rm -rf vendor/qcom/opensource/commonsys/dpm
git clone https://github.com/TheMatheusDev/vendor_qcom_opensource_commonsys_dpm.git -b fourteen --depth=1 vendor/qcom/opensource/commonsys/dpm


rm -rf vendor/qcom/opensource/audio
git clone https://github.com/TheMatheusDev/vendor_qcom_opensource_audio.git -b fourteen --depth=1 vendor/qcom/opensource/audio

rm -rf vendor/qcom/opensource/interfaces
git clone https://github.com/TheMatheusDev/vendor_qcom_opensource_interfaces.git -b fourteen --depth=1 vendor/qcom/opensource/interfaces

if [ -d "vendor/qcom/opensource/fm-commonsys" ]; then
    rm -rf vendor/qcom/opensource/fm-commonsys
    git clone https://github.com/TheMatheusDev/vendor_qcom_opensource_fm-commonsys.git -b fourteen --depth=1 vendor/qcom/opensource/fm-commonsys
else
    rm -rf vendor/qcom/opensource/commonsys/fm
    git clone https://github.com/TheMatheusDev/vendor_qcom_opensource_fm-commonsys.git -b fourteen --depth=1 vendor/qcom/opensource/commonsys/fm
fi

rm -rf hardware/qcom-caf/bengal/display
git clone https://github.com/TheMatheusDev/hardware_qcom-caf_bengal_display.git -b uvite-865 --depth=1 hardware/qcom-caf/bengal/display
rm -rf hardware/qcom-caf/bengal/media
git clone https://github.com/TheMatheusDev/hardware_qcom-caf_bengal_media.git -b uvite-865 --depth=1 hardware/qcom-caf/bengal/media
rm -rf hardware/qcom-caf/bengal/gps
git clone https://github.com/TheMatheusDev/hardware_qcom-caf_bengal_gps.git -b uvite-legacy-component --depth=1 hardware/qcom-caf/bengal/gps
rm -rf hardware/qcom-caf/bengal/audio
git clone https://github.com/TheMatheusDev/hardware_qcom-caf_bengal_audio.git -b uvite-bengal --depth=1 hardware/qcom-caf/bengal/audio

rm -rf platform/hardware/st/nfc
git clone https://github.com/AOSPA/android_hardware_st_nfc.git -b uvite --depth=1 hardware/st/nfc

rm -rf hardware_xiaomi
git clone https://github.com/AOSPA/android_hardware_xiaomi.git -b uvite --depth=1 hardware/xiaomi

rm -rf android_vendor_qcom_opensource_usb
git clone https://github.com/AOSPA/android_vendor_qcom-opensource_usb.git -b uvite --depth=1 vendor/qcom/opensource/usb/

rm -rf external_wpa_supplicant_8
git clone https://github.com/TheMatheusDev/external_wpa_supplicant_8.git -b uvite --depth=1 external/wpa_supplicant_8

rm -rf android_hardware_qcom_wlan
git clone https://github.com/TheMatheusDev/hardware_qcom-caf_wlan.git -b fourteen --depth=1 hardware/qcom-caf/wlan

git clone https://github.com/TheMatheusDev/android_kernel_xiaomi_sm6225-2.git -b uvite --depth=1 kernel/xiaomi/sm6225
git clone https://github.com/TheMatheusDev/android_device_xiaomi_sepolicy.git -b uvite --depth=1 device/xiaomi/sepolicy

git clone https://github.com/TheMatheusDev/device_xiaomi_sm6225-common.git -b evox-a14 --depth=1 device/xiaomi/sm6225-common
git clone https://github.com/TheMatheusDev/device_xiaomi_spes.git -b evox-a14 --depth=1 device/xiaomi/spes

git clone https://github.com/TheMatheusDev/vendor_xiaomi_spes.git -b fourteen --depth=1 vendor/xiaomi/spes
git clone https://github.com/TheMatheusDev/vendor_xiaomi_sm6225-common.git -b fourteen --depth=1 vendor/xiaomi/sm6225-common

git clone https://gitlab.com/ThankYouMario/proprietary_vendor_xiaomi_camera.git -b uvite-sm6225 --depth=1 vendor/xiaomi/camera

echo "Ascending's manifest synced!"
