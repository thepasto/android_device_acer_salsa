# Copy kernel modules
PRODUCT_COPY_FILES += \
device/acer/liquid/modules/2.6.29.6/fs/cifs/cifs.ko:system/lib/modules/2.6.29.6/fs/cifs/cifs.ko \
device/acer/liquid/modules/2.6.29.6/drivers/net/tun.ko:system/lib/modules/2.6.29.6/drivers/net/tun.ko \
device/acer/liquid/modules/2.6.29.6/drivers/staging/ramzswap/ramzswap.ko:system/lib/modules/2.6.29.6/drivers/ramzswap/ramzswap.ko \
device/acer/liquid/modules/bcm4329.ko:system/lib/modules/bcm4329.ko
