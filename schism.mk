# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/schism/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/schism/configs/common.mk)

# Inherit device configuration for bowser
$(call inherit-product, device/amazon/tate/full_tate.mk)
$(call inherit-product, device/amazon/bowser-common/schism.mk)

# TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

PRODUCT_NAME := schism_tate
PRODUCT_RELEASE_NAME := KindleFireHD

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/schism/prebuilt/bootanimations/BOOTANIMATION-1280x800.zip:system/media/bootanimation.zip
