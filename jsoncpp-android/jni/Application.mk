NDK_TOOLCHAIN_VERSION=4.9
LOCAL_PATH := $(call my-dir)
APP_STL := gnustl_static  
APP_MODULES := jsoncpp
APP_ABI := armeabi
APP_BUILD_SCRIPT := $(LOCAL_PATH)/jsoncpp/Android.mk
