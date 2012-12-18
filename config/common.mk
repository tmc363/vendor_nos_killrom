PRODUCT_BRAND ?= killrom

# axi0m speed demon
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.tags=release-keys \
    windowsmgr.max_events_per_sec=350 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    ro.config.nocheckin=1 \
    debug.performance.tuning=1 \
    persist.service.swiqi.enable=1 \
    video.accelerate.hw=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hep=1 \
    ro.ril.hsxpa=3 \
    ro.ril.enable.dtm=1 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=8 \
    ro.ril.enable.a53=1 \
    ro.ril.hsupa.category=5 \
    persist.sys.purgeable_assets=1 \
    pm.sleep_mode=1 \
    ro.home_app_adj=1 \
    ro.ext4fs=1 \
    persist.sys.use_dithering=0 \
    ro.ril.disable.power.collapse=0 \
    dalvik.vm.heapstartsize=128m \
    dalvik.vm.heapgrowthlimit=320m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heaputilization=0.05 \
    dalvik.vm.heapidealfree=8388608 \
    dalvik.vm.heapconcurrentstart=2097152 \
    dalvik.vm.verify-bytecode=false \
    ro.dalvik.vm.checkjni=0 \
    dalvik.vm.dexopt-flags=v=n,o=v \
    debug.composition.type=gpu \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=8000 \
    ro.config.hw_fast_dormancy=1 \
    net.dns1=8.8.4.4 \
    net.dns2=8.8.8.8 \
    ro.config.ringtone=EazyE.ogg \
    ro.config.notification_sound=Nobody-Move.ogg \
    ro.killrom.version=DoubleTap

# T-Mobile theme engine
include vendor/nos/killrom/config/themes_common.mk

# Include KILL audio files
include vendor/nos/killrom/config/kill_audio.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/etc/init.d/01killbomb:system/etc/init.d/01killbomb \
    vendor/nos/killrom/prebuilt/system/etc/init.d/91killrzipalign:system/etc/init.d/91killrzialign \
    vendor/nos/killrom/prebuilt/system/etc/init.d/97killrtcp:system/etc/init.d/97killrtcp

ifeq ($(TARGET_PRODUCT),full_mako)
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/etc/init.d/02killrkernel:system/etc/init.d/02killrkernel \
    vendor/nos/killrom/prebuilt/system/etc/init.d/05killrfs:system/etc/init.d/05killrfs \
    vendor/nos/killrom/prebuilt/system/etc/init.d/99killrsystem:system/etc/init.d/99killrsystem
endif

ifeq ($(TARGET_PRODUCT),full_grouper)
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/etc/init.d/02killrkernel:system/etc/init.d/02killrkernelgrouper \
    vendor/nos/killrom/prebuilt/system/etc/init.d/03killrgov:system/etc/init.d/02killrgovgrouper \
    vendor/nos/killrom/prebuilt/system/etc/init.d/05killrfs:system/etc/init.d/05killrfsgrouper \
    vendor/nos/killrom/prebuilt/system/etc/init.d/99killrsystem:system/etc/init.d/99killrsystemgrouper
endif

# sysinit and sysctl support
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/bin/sysinit:system/bin/sysinit \
    vendor/nos/killrom/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf

# Copy SuperSu
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/app/SuperSU.apk:system/app/SuperSU.apk \
    vendor/nos/killrom/prebuilt/system/xbin/su:system/xbin/su

#killr extras
PRODUCT_PACKAGES += \
        KILLRHome

#killr extras
PRODUCT_PACKAGES += \
        SpeedDemon

# extras
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/xbin/zipalign:system/xbin/zipalign \
    vendor/nos/killrom/prebuilt/system/xbin/sqlite3:system/xbin/sqlite3

# Bootanimation murdr
PRODUCT_COPY_FILES += \
    vendor/nos/killrom/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip
