#
# Copyright (C) 2016 Justin Driggers
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),glass-1)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := audio.primary.glass_1
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := lib/hw/audio.primary.glass_1.so
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := gps.omap4
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := lib/hw/gps.omap4.so
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := sensors.glass_1
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := lib/hw/sensors.glass_1.so
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := gralloc.omap4430
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := vendor/lib/hw/gralloc.omap4430.so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/hw

include $(BUILD_PREBUILT)

SYMLINKS := $(TARGET_OUT_VENDOR)/lib/hw/gralloc.omap4.so
$(SYMLINKS): GRALLOC_BINARY := ./gralloc.omap4430.so
$(SYMLINKS): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(GRALLOC_BINARY)"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -fs $(GRALLOC_BINARY) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libbltsville_ticpu_license
LOCAL_MODULE_SUFFIX := .txt
LOCAL_SRC_FILES := vendor/lib/libbltsville_ticpu_license.txt
LOCAL_MODULE_PATH:= $(TARGET_OUT_VENDOR)/lib

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libbltsville_ticpu
LOCAL_MODULE_SUFFIX := .2.1.0.0.so
LOCAL_SRC_FILES := vendor/lib/libbltsville_ticpu.2.1.0.0.so
LOCAL_SHARED_LIBRARIES := libbltsville_ticpu_license
LOCAL_MODULE_PATH:= $(TARGET_OUT_VENDOR)/lib

include $(BUILD_PREBUILT)

SYMLINKS := $(TARGET_OUT_VENDOR)/lib/libbltsville_ticpu.so
$(SYMLINKS): TICPU_BINARY := ./libbltsville_ticpu.2.1.0.0.so
$(SYMLINKS): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(TICPU_BINARY)"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -fs $(TICPU_BINARY) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)

SYMLINKS1 := $(TARGET_OUT_VENDOR)/lib/libbltsville_cpu.so
$(SYMLINKS1): LINK_BINARY := ./libbltsville_ticpu.so
$(SYMLINKS1): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(LINK_BINARY)"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -fs $(LINK_BINARY) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS1)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libbltsville_gc2d
LOCAL_MODULE_SUFFIX := .2.2.2.0.so
LOCAL_SRC_FILES := vendor/lib/libbltsville_gc2d.2.2.2.0.so
LOCAL_MODULE_PATH:= $(TARGET_OUT_VENDOR)/lib

include $(BUILD_PREBUILT)

SYMLINKS := $(TARGET_OUT_VENDOR)/lib/libbltsville_gc2d.so
$(SYMLINKS): GC2D_BINARY := ./libbltsville_gc2d.2.2.2.0.so
$(SYMLINKS): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(GC2D_BINARY)"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -fs $(GC2D_BINARY) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)

SYMLINKS1 := $(TARGET_OUT_VENDOR)/lib/libbltsville_hw2d.so
$(SYMLINKS1): LINK_BINARY := ./libbltsville_gc2d.so
$(SYMLINKS1): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(LINK_BINARY)"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -fs $(LINK_BINARY) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS1)

endif
