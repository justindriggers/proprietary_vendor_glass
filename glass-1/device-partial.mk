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
    sensors.glass_1

PRODUCT_COPY_FILES := \
    vendor/glass/glass-1/proprietary/vendor/firmware/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    vendor/glass/glass-1/proprietary/vendor/firmware/ducati-m3-core0.xem3:system/vendor/firmware/ducati-m3-core0.xem3 \
    vendor/glass/glass-1/proprietary/vendor/firmware/ducati-m3-core0-2gb.xem3:system/vendor/firmware/ducati-m3-core0-2gb.xem3 \
    vendor/glass/glass-1/proprietary/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
    vendor/glass/glass-1/proprietary/vendor/firmware/glasshub.s19:system/vendor/firmware/glasshub.s19 \
    vendor/glass/glass-1/proprietary/vendor/firmware/NVM2:system/vendor/firmware/NVM2 \
    vendor/glass/glass-1/proprietary/vendor/firmware/tesla-dsp.xe64T:system/vendor/firmware/tesla-dsp.xe64T
