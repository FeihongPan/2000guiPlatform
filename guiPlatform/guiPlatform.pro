TEMPLATE = subdirs

SUBDIRS += \
    CommonLib \
    TCommonLib \
    GUIComponentLib \
    GUICommFuncLib \
    GUIFramework \
    MainProject

CommonLib.subdir = $$_PRO_FILE_PWD_/CommonLib
TCommonLib.subdir = $$_PRO_FILE_PWD_/TCommonLib
GUIComponentLib.subdir = $$_PRO_FILE_PWD_/GUIComponentLib
GUICommFuncLib.subdir = $$_PRO_FILE_PWD_/GUICommFuncLib
GUIFramework.subdir = $$_PRO_FILE_PWD_/GUIFramework
MainProject.subdir = $$_PRO_FILE_PWD_/MainProject

TCommonLib.depends = CommonLib
GUIComponentLib.depends = CommonLib TCommonLib
GUICommFuncLib.depends = CommonLib TCommonLib GUIComponentLib
GUIFramework.depends = CommonLib TCommonLib GUIComponentLib GUICommFuncLib
MainProject.depends = CommonLib TCommonLib GUIComponentLib GUICommFuncLib GUIFramework
