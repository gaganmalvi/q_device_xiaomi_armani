LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

## Libs
LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    liblog \
    libprocessgroup

LOCAL_SRC_FILES += \
    loc_log.cpp \
    loc_cfg.cpp \
    msg_q.c \
    linked_list.c \
    loc_target.cpp \
    loc_timer.c \
    ../platform_lib_abstractions/elapsed_millis_since_boot.cpp


LOCAL_CFLAGS += \
     -fno-short-enums \
     -D_ANDROID_ \
     -Wno-unused-parameter

LOCAL_LDFLAGS += -Wl,--export-dynamic

## Includes
LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/../platform_lib_abstractions

LOCAL_COPY_HEADERS_TO:= gps.utils/
LOCAL_COPY_HEADERS:= \
   loc_log.h \
   loc_cfg.h \
   log_util.h \
   linked_list.h \
   msg_q.h \
   loc_target.h \
   loc_timer.h \
   ../platform_lib_abstractions/platform_lib_includes.h \
   ../platform_lib_abstractions/platform_lib_time.h \
   ../platform_lib_abstractions/platform_lib_macros.h


LOCAL_MODULE := libgps.utils
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_SHARED_LIBRARY)
