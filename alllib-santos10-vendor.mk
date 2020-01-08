$(shell mkdir -p $(TARGET_COPY_OUT_VENDOR))
PRODUCT_COPY_FILES += \
    ./lib:system/lib \
    ./vendor:system/vendor