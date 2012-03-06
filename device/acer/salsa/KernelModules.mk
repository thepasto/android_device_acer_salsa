# Copy kernel modules
PRODUCT_COPY_FILES += \
device/acer/salsa/modules/2.6.29.6/fs/cifs/cifs.ko:system/lib/modules/2.6.29.6/fs/cifs/cifs.ko \
device/acer/salsa/modules/2.6.29.6/drivers/net/tun.ko:system/lib/modules/2.6.29.6/drivers/net/tun.ko \
device/acer/salsa/modules/2.6.29.6/drivers/staging/ramzswap/ramzswap.ko:system/lib/modules/2.6.29.6/drivers/ramzswap/ramzswap.ko \
device/acer/salsa/modules/bcm4329.ko:system/lib/modules/bcm4329.ko
