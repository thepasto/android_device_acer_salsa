# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/acer/liquid/extract-files.sh - DO NOT EDIT

# All the blobs necessary for blade
PRODUCT_COPY_FILES += \
    vendor/acer/liquid/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/acer/liquid/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/acer/liquid/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/acer/liquid/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/acer/liquid/proprietary/libgsl.so:system/lib//libgsl.so \
    vendor/acer/liquid/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/acer/liquid/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/acer/liquid/proprietary/BCM4325.hcd:system/etc/firmware/BCM4325.hcd \
    vendor/acer/liquid/proprietary/BCM4325.bin:system/etc/wifi/BCM4325.bin \
    vendor/acer/liquid/proprietary/BCM4325_apsta.bin:system/etc/wifi/BCM4325_apsta.bin \
    vendor/acer/liquid/proprietary/BCM4325Fac.bin:system/etc/wifi/BCM4325Fac.bin \
    vendor/acer/liquid/proprietary/nvram.txt:system/etc/wifi/nvram.txt \
    vendor/acer/liquid/proprietary/qmuxd:system/bin/qmuxd \
    vendor/acer/liquid/proprietary/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    vendor/acer/liquid/proprietary/libril-acer-1.so:system/lib/libril-acer-1.so \
    vendor/acer/liquid/proprietary/libril-acerril-hook-oem.so:system/lib/libril-acerril-hook-oem.so \
    vendor/acer/liquid/proprietary/libdiag.so:system/lib/libdiag.so \
    vendor/acer/liquid/proprietary/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/acer/liquid/proprietary/libqmi.so:system/lib/libqmi.so \
    vendor/acer/liquid/proprietary/libdsm.so:system/lib/libdsm.so \
    vendor/acer/liquid/proprietary/libqueue.so:system/lib/libqueue.so \
    vendor/acer/liquid/proprietary/libdll.so:system/lib/libdll.so \
    vendor/acer/liquid/proprietary/libcm.so:system/lib/libcm.so \
    vendor/acer/liquid/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/acer/liquid/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/acer/liquid/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/acer/liquid/proprietary/libwms.so:system/lib/libwms.so \
    vendor/acer/liquid/proprietary/libnv.so:system/lib/libnv.so \
    vendor/acer/liquid/proprietary/libwmsts.so:system/lib/libwmsts.so \
    vendor/acer/liquid/proprietary/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/acer/liquid/proprietary/libdss.so:system/lib/libdss.so \
    vendor/acer/liquid/proprietary/libauth.so:system/lib/libauth.so \
    vendor/acer/liquid/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/acer/liquid/proprietary/liboemcamera.so:obj/lib/liboemcamera.so \
    vendor/acer/liquid/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/acer/liquid/proprietary/libmmipl.so:system/lib/libmmipl.so \
    vendor/acer/liquid/proprietary/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
    vendor/acer/liquid/proprietary/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
    vendor/acer/liquid/proprietary/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \
    vendor/acer/liquid/proprietary/libOmxQcelpDec.so:/system/lib/libOmxQcelpDec.so \
    vendor/acer/liquid/proprietary/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
    vendor/acer/liquid/proprietary/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \
    vendor/acer/liquid/proprietary/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \
    vendor/acer/liquid/proprietary/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \
    vendor/acer/liquid/proprietary/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \
    vendor/acer/liquid/proprietary/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \
    vendor/acer/liquid/proprietary/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \
    vendor/acer/liquid/proprietary/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
    vendor/acer/liquid/proprietary/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \
    vendor/acer/liquid/proprietary/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \
    vendor/acer/liquid/proprietary/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \
    vendor/acer/liquid/proprietary/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \
    vendor/acer/liquid/proprietary/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \
    vendor/acer/liquid/proprietary/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \
    vendor/acer/liquid/proprietary/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    vendor/acer/liquid/proprietary/libloc.so:system/lib/libloc.so \
    vendor/acer/liquid/proprietary/libloc.so:obj/lib/libloc.so \
    vendor/acer/liquid/proprietary/libloc-rpc.so:system/lib/libloc-rpc.so \
    vendor/acer/liquid/proprietary/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/acer/liquid/proprietary/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \
    vendor/acer/liquid/proprietary/sensorserver_yamaha:system/bin/sensorserver_yamaha \
    vendor/acer/liquid/proprietary/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha \
    vendor/acer/liquid/proprietary/libms3c_yamaha.so:system/lib/libms3c_yamaha.so \
    vendor/acer/liquid/proprietary/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \
    vendor/acer/liquid/proprietary/sensors.salsa.so:system/lib/hw/sensors.salsa.so

