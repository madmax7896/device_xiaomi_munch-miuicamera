#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter $(LOCAL_PATH),$(PRODUCT_SOONG_NAMESPACES)),)

include $(CLEAR_VARS)

CAMERA_LIBRARIES := libcamera_algoup_jni.xiaomi.so libcamera_mianode_jni.xiaomi.so

CAMERA_SYMLINKS := $(addprefix $(TARGET_OUT_APPS_PRIVILEGED)/MiuiCamera/lib/arm64/,$(notdir $(CAMERA_LIBRARIES)))
$(CAMERA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MiuiCamera lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CAMERA_SYMLINKS)

endif
