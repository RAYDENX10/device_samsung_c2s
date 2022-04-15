#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from the common tree
include device/samsung/exynos990-common/BoardConfigCommon.mk

# Inherit from the proprietary configuration
include vendor/samsung/c2s/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/c2s

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

TARGET_OTA_ASSERT_DEVICE := c2s

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_c2s

# System Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Kernel
TARGET_KERNEL_CONFIG := exynos9830-c2sxxx_defconfig

# Vendor Props
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
