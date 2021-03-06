LOCAL_PATH := $(call my-dir)

## libshim_agps
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    icu53.c \
    ssl.c

LOCAL_SHARED_LIBRARIES := liblog libicuuc libicui18n libcrypto
LOCAL_MODULE := libshim_agps
include $(BUILD_SHARED_LIBRARY)


## libshim_asc
include $(CLEAR_VARS)

LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 := mtk_asc.cpp

LOCAL_SHARED_LIBRARIES_32 := libbinder libgui
LOCAL_MODULE := libshim_asc
include $(BUILD_SHARED_LIBRARY)


## libshim_ui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_ui.cpp

LOCAL_SHARED_LIBRARIES := libbinder libui
LOCAL_MODULE := libshim_ui
include $(BUILD_SHARED_LIBRARY)


## libshim_cam
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_cam.cpp

LOCAL_SHARED_LIBRARIES := libbinder libgui libui
LOCAL_MODULE := libshim_cam
include $(BUILD_SHARED_LIBRARY)


### libshim_snd
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_audio.cpp

LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libshim_snd
include $(BUILD_SHARED_LIBRARY)

