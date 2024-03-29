# Copyright (C) 2021 Palladium-OS 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/PalladiumFragments

PRODUCT_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/PalladiumFragments/overlay

PRODUCT_PACKAGES += \
    TurboPrebuilt 

PRODUCT_COPY_FILES += \
    vendor/PalladiumFragments/etc/privapp-permissions-elgoog.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-elgoog.xml \
    vendor/PalladiumFragments/etc/googlesysconfig.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/elgoog.xml

# Inherit from audio config
$(call inherit-product, vendor/PalladiumFragments/config/audio.mk)

# Inherit from fonts config
$(call inherit-product, vendor/PalladiumFragments/config/fonts.mk)
