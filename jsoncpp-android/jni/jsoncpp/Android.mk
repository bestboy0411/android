BASE_PATH := $(call my-dir)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	src/lib_json/json_reader.cpp \
	chromium-overrides/src/lib_json/json_value.cpp \
	src/lib_json/json_writer.cpp

LOCAL_C_INCLUDES:= \
    $(KERNEL_HEADERS) \
    $(TARGET_PROJECT_INCLUDES) \
    $(TARGET_C_INCLUDES) \
    $(COS_EXTERNAL_DIR)/icu4c/common \
	$(LOCAL_PATH)/chromium-overrides/include \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/src/lib_json

#LOCAL_SHARED_LIBRARIES := \
  #     libutils \
   #    libcutils \
   #    libicuuc \

LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)/chromium-overrides/include \
	$(LOCAL_PATH)/include
	
LOCAL_LDFLAGS := \
	-Wl,--no-undefined \
	$(LOCAL_LDFLAGS)

LOCAL_CFLAGS := \
	-DJSON_USE_EXCEPTION=0 \
 	$(TARGET_GLOBAL_CFLAGS) \
	$(LOCAL_CFLAGS) \
	-O2 -g \

LOCAL_CPPFLAGS := \
	$(TARGET_GLOBAL_CPPFLAGS) \
	$(LOCAL_CPPFLAGS) \
	-O2 -g \

LOCAL_MODULE := libjsoncpp

LOCAL_MODULE_TAGS := eng tests
-include external/libcxx/libcxx.mk
include $(BUILD_SHARED_LIBRARY)

