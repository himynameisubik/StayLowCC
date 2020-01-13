TARGET = iphone:13.0:13.0
ARCHS = arm64 arm64e

FINALPACKAGE = 1

DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StayLowCC
StayLowCC_FRAMEWORKS = Foundation UIKit CoreGraphics
StayLowCC_FILES = StayLowCC.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/aggregate.mk
