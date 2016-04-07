#
# Copyright (C) 2016 Justin Driggers
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
#

PRODUCT_PACKAGES := \
    audio.primary.glass_1 \
    gps.omap4 \
    gralloc.omap4430 \
    libbltsville_gc2d \
    libbltsville_ticpu \
    sensors.glass_1

PRODUCT_COPY_FILES := \
    vendor/glass/glass-1/proprietary/bin/bqflash:system/bin/bqflash \
    vendor/glass/glass-1/proprietary/bin/raft:system/bin/raft \
    vendor/glass/glass-1/proprietary/bin/shm_service:system/bin/shm_service \
    vendor/glass/glass-1/proprietary/bin/sysproxy:system/bin/sysproxy \
    vendor/glass/glass-1/proprietary/bin/sysproxyd:system/bin/sysproxyd \
    vendor/glass/glass-1/proprietary/lib/modules/pvrsrvkm_sgx540_120.ko:system/lib/modules/pvrsrvkm_sgx540_120.ko \
    vendor/glass/glass-1/proprietary/lib/modules/pvrsrvkm_sgx544_112.ko:system/lib/modules/pvrsrvkm_sgx544_112.ko \
    vendor/glass/glass-1/proprietary/vendor/bin/pvrsrvctl_SGX540_120:system/vendor/bin/pvrsrvctl_SGX540_120 \
    vendor/glass/glass-1/proprietary/vendor/bin/pvrsrvctl_SGX544_112:system/vendor/bin/pvrsrvctl_SGX544_112 \
    vendor/glass/glass-1/proprietary/vendor/bin/pvrsrvinit:system/vendor/bin/pvrsrvinit \
    vendor/glass/glass-1/proprietary/vendor/firmware/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    vendor/glass/glass-1/proprietary/vendor/firmware/ducati-m3-core0.xem3:system/vendor/firmware/ducati-m3-core0.xem3 \
    vendor/glass/glass-1/proprietary/vendor/firmware/ducati-m3-core0-2gb.xem3:system/vendor/firmware/ducati-m3-core0-2gb.xem3 \
    vendor/glass/glass-1/proprietary/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
    vendor/glass/glass-1/proprietary/vendor/firmware/glasshub.s19:system/vendor/firmware/glasshub.s19 \
    vendor/glass/glass-1/proprietary/vendor/firmware/NVM2:system/vendor/firmware/NVM2 \
    vendor/glass/glass-1/proprietary/vendor/firmware/tesla-dsp.xe64T:system/vendor/firmware/tesla-dsp.xe64T \
    vendor/glass/glass-1/proprietary/vendor/lib/libglslcompiler_SGX540_120.so:system/vendor/lib/libglslcompiler_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libglslcompiler_SGX544_112.so:system/vendor/lib/libglslcompiler_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libIMGegl_SGX540_120.so:system/vendor/lib/libIMGegl_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libIMGegl_SGX544_112.so:system/vendor/lib/libIMGegl_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libpvr2d_SGX540_120.so:system/vendor/lib/libpvr2d_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libpvr2d_SGX544_112.so:system/vendor/lib/libpvr2d_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so:system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libpvrANDROID_WSEGL_SGX544_112.so:system/vendor/lib/libpvrANDROID_WSEGL_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libPVRScopeServices_SGX540_120.so:system/vendor/lib/libPVRScopeServices_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libPVRScopeServices_SGX544_112.so:system/vendor/lib/libPVRScopeServices_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libsrv_init_SGX540_120.so:system/vendor/lib/libsrv_init_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libsrv_init_SGX544_112.so:system/vendor/lib/libsrv_init_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libsrv_um_SGX540_120.so:system/vendor/lib/libsrv_um_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libsrv_um_SGX544_112.so:system/vendor/lib/libsrv_um_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libusc_SGX540_120.so:system/vendor/lib/libusc_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/libusc_SGX544_112.so:system/vendor/lib/libusc_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/egl/libEGL_POWERVR_SGX544_112.so:system/vendor/lib/egl/libEGL_POWERVR_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_112.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_112.so \
    vendor/glass/glass-1/proprietary/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    vendor/glass/glass-1/proprietary/vendor/lib/egl/libGLESv2_POWERVR_SGX544_112.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX544_112.so \
    vendor/glass/glass-1/proprietary/xbin/bootconfig:system/xbin/bootconfig \
    vendor/glass/glass-1/proprietary/xbin/hex2bin:system/xbin/hex2bin
