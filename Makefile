TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = modlayout

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = modlayout

modlayout_FILES = main.m CAppDelegate.m CRootViewController.m
modlayout_FRAMEWORKS = UIKit CoreGraphics
modlayout_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
