LOCAL_PATH := $(call my-dir)
ifneq ($(filter arm arm64 x86,$(TARGET_ARCH)),)
# This is a standard app example
include $(CLEAR_VARS)
LOCAL_MODULE := alllib
LOCAL_MODULE_OWNER := alllib
LOCAL_SRC_FILES := lib/
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := LIB
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := allvend
LOCAL_MODULE_OWNER := alllib
LOCAL_SRC_FILES := vendor/
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := VENDOR
include $(BUILD_PREBUILT)
endif