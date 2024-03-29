LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_STATIC_LIBRARIES := libarect
LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libgui libutils libbase libhidlbase libnativewindow libsensor \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0

LOCAL_C_INCLUDES += \
    system/media/camera/include

LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_HEADER_LIBRARIES := libnativebase_headers
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_HEAPTRACKED_SHARED_LIBRARY)
