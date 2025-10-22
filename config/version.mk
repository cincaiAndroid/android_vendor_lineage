# CincaiAndroid versioning

# Major / Minor base
PRODUCT_VERSION_MAJOR := 23
PRODUCT_VERSION_MINOR := 0

# Extra build tag (date)
CINCAI_BUILD_DATE := $(shell date +%Y%m%d)

# Internal cincai version
# CINCAI_VERSION := cincaiAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CINCAI_BUILD_DATE) #original line
CINCAI_VERSION := cincaiAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-$(CINCAI_BUILD_DATE)

# Display version (what user sees)
# CINCAI_DISPLAY_VERSION := v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CINCAI_BUILD_DATE) #original line
CINCAI_DISPLAY_VERSION := v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-$(CINCAI_BUILD_DATE)

# Legacy Lineage variable (to keep Updater/Settings happy)
LINEAGE_VERSION := $(CINCAI_VERSION)
LINEAGE_DISPLAY_VERSION := $(CINCAI_DISPLAY_VERSION)

# System properties baked into build.prop
PRODUCT_SYSTEM_PROPERTIES += \
    ro.cincai.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.cincai.display.version=$(CINCAI_DISPLAY_VERSION) \
    ro.cincai.build.version=$(CINCAI_VERSION) \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION)
