#
# Copyright (C) 2021 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),RMX2061)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Hack some props to allow stock ROM flashing
BOARD_RECOVERY_IMAGE_PREPARE := \
    sed -i 's/ro.build.date.utc=.*/ro.build.date.utc=0/' $(TARGET_RECOVERY_ROOT_OUT)/prop.default

endif
