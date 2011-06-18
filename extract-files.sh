#!/bin/sh

mkdir -p ../../../vendor/lge/aloha/proprietary

DIRS="
bin
etc/firmware
etc/wl
lib/egl
lib/hw
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/lge/aloha/proprietary/$DIR
done

FILES="
bin/akmd2
bin/BCM4329B1_002.002.023.0313.0333.hcd
bin/netmgrd
bin/port-bridge
bin/qmuxd
bin/rild
bin/rmt_storage
bin/tsdown
bin/wiperiface

etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw

etc/wl/nvram.txt
etc/wl/rtecdc.bin
etc/wl/rtecdc-apsta.bin
etc/wl/rtecdc-mfgtest.bin

lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so

lib/hw/gralloc.default.so
lib/hw/gralloc.aloha.so
lib/hw/lights.aloha.so
lib/hw/sensors.aloha.so

lib/liba2dp.so
lib/libaudioeq.so

lib/libauth.so
lib/libbcmwl.so
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libdsutils.so
lib/libgsdi_exp.so
lib/libgsl.so
lib/libgstk_exp.so
lib/liblgerft.so
lib/libmmgsdilib.so
lib/libnv.so
lib/liboem_rapi.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqmi.so
lib/libqueue.so
lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libril.so
lib/libsnd.so
lib/libwms.so
lib/libwmsts.so

lib/libmmipl.so
lib/libmmjpeg.so
lib/liboemcamera.so

lib/libnetmgr.so

lib/libmm-abl.so
lib/libmm-adspsvc.so
lib/libOmxAacDec.so
lib/libOmxAacEnc.so
lib/libOmxAdpcmDec.so
lib/libOmxAmrDec.so
lib/libOmxAmrEnc.so
lib/libOmxAmrRtpDec.so
lib/libOmxEvrcDec.so
lib/libOmxEvrcEnc.so
lib/libOmxH264Dec.so
lib/libOmxMp3Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxQcelp13Enc.so
lib/libOmxQcelpDec.so
lib/libOmxVidEnc.so
lib/libOmxWmaDec.so
lib/libOmxWmvDec.so

"

for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/lge/aloha/proprietary/$FILE
done

