QT       += core gui
QT       += network xml serialport printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = guiPlatform

CONFIG -= app_bundle

DEFINES += QS_HAS_JSON
DEFINES += QS_HAS_XML

QMAKE_CXXFLAGS_EXCEPTIONS_ON = /EHa
QMAKE_CXXFLAGS_STL_ON = /EHa

include($$PWD/NaviForm/NaviForm.pri)
include($$PWD/Recipe/Recipe.pri)
include($$PWD/TemplateLib/TemplateLib.pri)
include($$PWD/../ThirdParties/ThirdParties.pri)

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

FORMS += \
    mainwindow.ui

HEADERS += \
    mainwindow.h \
    startmanager.h

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    startmanager.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# CommonLib
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../CommonLib/release/ -lCommonLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../CommonLib/debug/ -lCommonLibd
else:unix: LIBS += -L$$OUT_PWD/../CommonLib/ -lCommonLib

INCLUDEPATH += $$PWD/../CommonLib
DEPENDPATH += $$PWD/../CommonLib

# TCommonLib
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../TCommonLib/release/ -lTCommonLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../TCommonLib/debug/ -lTCommonLibd
else:unix: LIBS += -L$$OUT_PWD/../TCommonLib/ -lTCommonLib

INCLUDEPATH += $$PWD/../TCommonLib
DEPENDPATH += $$PWD/../TCommonLib

# GUIComponentLib
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../GUIComponentLib/release/ -lGUIComponentLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../GUIComponentLib/debug/ -lGUIComponentLibd
else:unix: LIBS += -L$$OUT_PWD/../GUIComponentLib/ -lGUIComponentLib

INCLUDEPATH += $$PWD/../GUIComponentLib
DEPENDPATH += $$PWD/../GUIComponentLib

# GUICommFuncLib
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../GUICommFuncLib/release/ -lGUICommFuncLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../GUICommFuncLib/debug/ -lGUICommFuncLibd
else:unix: LIBS += -L$$OUT_PWD/../GUICommFuncLib/ -lGUICommFuncLib

INCLUDEPATH += $$PWD/../GUICommFuncLib
DEPENDPATH += $$PWD/../GUICommFuncLib

# GUIFramework
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../GUIFramework/release/ -lGUIFramework
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../GUIFramework/debug/ -lGUIFrameworkd
else:unix: LIBS += -L$$OUT_PWD/../GUIFramework/ -lGUIFramework

INCLUDEPATH += $$PWD/../GUIFramework
DEPENDPATH += $$PWD/../GUIFramework
