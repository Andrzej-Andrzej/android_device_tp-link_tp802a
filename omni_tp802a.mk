#
# Copyright (C) 2017 The Android Open-Source Project
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
#

LOCAL_PATH := device/tp-link/tp802a

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/tp-link/tp802a/device.mk)
$(call inherit-product, device/qcom/common/Android.mk)


# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_tp802a
PRODUCT_DEVICE := tp802a
PRODUCT_BRAND := Neffos
PRODUCT_MODEL := Neffos Y5
PRODUCT_MANUFACTURER := TP-LINK
PRODUCT_LOCALES := en_US
