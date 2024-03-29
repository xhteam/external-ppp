LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	main.c \
	magic.c \
	fsm.c \
	lcp.c \
	ipcp.c \
	upap.c \
	chap-new.c \
	ccp.c \
	ecp.c \
	auth.c \
	options.c \
	sys-linux.c \
	chap_ms.c \
	demand.c \
	utils.c \
	tty.c \
	eap.c \
	chap-md5.c \
	pppcrypt.c \
	openssl-hash.c \
	pppox.c

LOCAL_SHARED_LIBRARIES := \
	libcutils libcrypto

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

# Force sizeof(enum)=4
LOCAL_CFLAGS := -fno-short-enums -DANDROID_CHANGES -DCHAPMS=1 -DMPPE=1 -Iexternal/openssl/include

LOCAL_MODULE:= pppd
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := chat.c
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE := chat
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)
