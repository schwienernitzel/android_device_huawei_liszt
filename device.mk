#
# Copyright (C) 2024 The LineageOS Project
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

DEVICE_PATH := device/huawei/liszt

# Inherit vendor blobs
$(call inherit-product, vendor/huawei/liszt/vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.zygote=zygote64_32 \
    ro.adb.secure=0 \
    ro.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enable_bypass=1 \
    ro.config.sync=yes

# Screen
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
