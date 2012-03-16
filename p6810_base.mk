#
# Copyright (C) 2012 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.smdkc210.rc:root/init.smdkc210.rc

# Kernel modules for ramdisk
RAMDISK_MODULES := $(addprefix $(LOCAL_PATH)/modules/, gspca_main.ko \
    j4fs.ko scsi_wait_scan.ko)
PRODUCT_COPY_FILES += $(foreach module,\
	$(RAMDISK_MODULES),\
	$(module):root/lib/modules/$(notdir $(module)))

# Other kernel modules not in ramdisk
PRODUCT_COPY_FILES += $(foreach module,\
	$(filter-out $(RAMDISK_MODULES),$(wildcard $(LOCAL_PATH)/modules/*.ko)),\
	$(module):system/lib/modules/$(notdir $(module)))

# Kernel modules for recovery ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/j4fs.ko:recovery/root/lib/modules/j4fs.ko
