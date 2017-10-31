LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)
LOCAL_CFLAGS := -DANDROID_NDK

LOCAL_MODULE := tinyxml2

LOCAL_SRC_FILES := tinyxml2.cpp
 
include $(BUILD_STATIC_LIBRARY)
