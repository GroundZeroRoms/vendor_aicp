# Inherit device configuration
$(call inherit-product, device/lge/su640/full_su640.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusLTE

# Inherit GSM common stuff
$(call inherit-product, vendor/aicp/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/aicp/overlay/iprj-common

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := su640
PRODUCT_NAME := aicp_su640
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-SU640
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
# PRODUCT_BUILD_PROP_OVERRIDES ...
