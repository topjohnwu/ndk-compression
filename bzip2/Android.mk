LOCAL_PATH:= $(call my-dir)

# ========================================================
# libbz2.a
# ========================================================
include $(CLEAR_VARS)
LOCAL_MODULE := libbz2
LOCAL_SRC_FILES := \
	blocksort.c  \
	huffman.c    \
	crctable.c   \
	randtable.c  \
	compress.c   \
	decompress.c \
	bzlib.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)
