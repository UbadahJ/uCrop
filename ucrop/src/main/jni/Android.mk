LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := ucrop
LOCAL_SRC_FILES := uCrop.cpp

LOCAL_LDLIBS    := -landroid -llog -lz
LOCAL_STATIC_LIBRARIES := libpng libjpeg9

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path,~/Android/Sdk/ndk/22.1.7171670/sources/third_party/)
$(call import-module,libpng/jni)
$(call import-module,libjpeg/libjpeg9)