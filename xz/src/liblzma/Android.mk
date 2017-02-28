LOCAL_PATH:= $(call my-dir)

# ========================================================
# liblzma.a
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	../common/tuklib_cpucores.c \
	../common/tuklib_exit.c \
	../common/tuklib_mbstr_fw.c \
	../common/tuklib_mbstr_width.c \
	../common/tuklib_open_stdxxx.c \
	../common/tuklib_physmem.c \
	../common/tuklib_progname.c \
	check/check.c \
	check/crc32_fast.c \
	check/crc32_table.c \
	check/crc64_fast.c \
	check/crc64_table.c \
	check/sha256.c \
	common/alone_decoder.c \
	common/alone_encoder.c \
	common/auto_decoder.c \
	common/block_buffer_decoder.c \
	common/block_buffer_encoder.c \
	common/block_decoder.c \
	common/block_encoder.c \
	common/block_header_decoder.c \
	common/block_header_encoder.c \
	common/block_util.c \
	common/common.c \
	common/easy_buffer_encoder.c \
	common/easy_decoder_memusage.c \
	common/easy_encoder.c \
	common/easy_encoder_memusage.c \
	common/easy_preset.c \
	common/filter_buffer_decoder.c \
	common/filter_buffer_encoder.c \
	common/filter_common.c \
	common/filter_decoder.c \
	common/filter_encoder.c \
	common/filter_flags_decoder.c \
	common/filter_flags_encoder.c \
	common/hardware_cputhreads.c \
	common/hardware_physmem.c \
	common/index.c \
	common/index_decoder.c \
	common/index_encoder.c \
	common/index_hash.c \
	common/outqueue.c \
	common/stream_buffer_decoder.c \
	common/stream_buffer_encoder.c \
	common/stream_decoder.c \
	common/stream_encoder.c \
	common/stream_encoder_mt.c \
	common/stream_flags_common.c \
	common/stream_flags_decoder.c \
	common/stream_flags_encoder.c \
	common/vli_decoder.c \
	common/vli_encoder.c \
	common/vli_size.c \
	delta/delta_common.c \
	delta/delta_decoder.c \
	delta/delta_encoder.c \
	lz/lz_decoder.c \
	lz/lz_encoder.c \
	lz/lz_encoder_mf.c \
	lzma/fastpos_table.c \
	lzma/fastpos_tablegen.c \
	lzma/lzma2_decoder.c \
	lzma/lzma2_encoder.c \
	lzma/lzma_decoder.c \
	lzma/lzma_encoder.c \
	lzma/lzma_encoder_optimum_fast.c \
	lzma/lzma_encoder_optimum_normal.c \
	lzma/lzma_encoder_presets.c \
	rangecoder/price_table.c \
	rangecoder/price_tablegen.c \
	simple/arm.c \
	simple/armthumb.c \
	simple/ia64.c \
	simple/powerpc.c \
	simple/simple_coder.c \
	simple/simple_decoder.c \
	simple/simple_encoder.c \
	simple/sparc.c \
	simple/x86.c \

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../../ \
	$(LOCAL_PATH)/../common \
	$(LOCAL_PATH)/api \
	$(LOCAL_PATH)/check \
	$(LOCAL_PATH)/common \
	$(LOCAL_PATH)/delta \
	$(LOCAL_PATH)/lz \
	$(LOCAL_PATH)/lzma \
	$(LOCAL_PATH)/rangecoder \
	$(LOCAL_PATH)/simple \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-std=c99

LOCAL_MODULE := liblzma
LOCAL_PRELINK_MODULE := false

include $(BUILD_STATIC_LIBRARY)
