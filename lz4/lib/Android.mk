LOCAL_PATH:= $(call my-dir)

# ========================================================
# liblzma.a
# ========================================================
include $(CLEAR_VARS)
LOCAL_MODULE := liblz4
LOCAL_SRC_FILES := \
	lz4.c \
	lz4frame.c \
	lz4hc.c \
	xxhash.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)
