#
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/p6800.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := p6800
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-P6800
PRODUCT_NAME := cm_p6800
PRODUCT_RELEASE_NAME := GT-P6800

# Set product name and build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P6800 BUILD_FINGERPRINT="samsung/GT-P6800/GT-P6800:4.0.4/IMM76D/XXLQ1:user/release-keys" PRIVATE_BUILD_DESC="GT-P6800-user 4.0.4 IMM76D XXLQ1 release-keys"
