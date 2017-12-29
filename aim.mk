# Inherit from device specific
$(call inherit-product, device/asus/Z010D/full_Z010D.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aim/config/common_full_phone.mk)

#DEVICE_PACKAGE_OVERLAYS += device/asus/msm8916-common/overlay/lineage

PRODUCT_NAME := aim_Z010D
PRODUCT_DEVICE := Z010D
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max
PRODUCT_MANUFACTURER := asus
TARGET_HAS_LOW_RAM := true
PRODUCT_GMS_CLIENTID_BASE := android-asus

# Inherit Go AudioPackage
 $(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackageGo.mk)
 # Inherit Go default properties, sets is-low-ram-device flag etc.
 $(call inherit-product, build/target/product/go_defaults.mk)
 # Change heap growth multipier value
 PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.foreground-heap-growth-multiplier=2.0
