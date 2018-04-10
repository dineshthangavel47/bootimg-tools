LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unmkbootimg.c
LOCAL_STATIC_LIBRARIES := libcutils libc
LOCAL_MODULE := rw_unpackbootimg
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_STEM := unpackbootimg
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/RedWolf/symbols
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/RedWolf
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))
