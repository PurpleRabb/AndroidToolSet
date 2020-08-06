QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    device/adbclient.cpp \
    device/deviceinfo.cpp \
    device/videothread.cpp \
    input/devicebuttonhandler.cpp \
    input/input_to_adroid_keys.cpp \
    input/monkeyhandler.cpp \
    input/devicetouchhandler.cpp \
    input/inputhandler.cpp \
    input/shellkeyboardhandler.cpp \
    aboutdialog.cpp \
    initthread.cpp

HEADERS += \
    mainwindow.h \
    aboutdialog.h \
    initthread.h \
    input/android_keycodes.h   \
    input/devicetouchhandler.h  \
    input/input_to_adroid_keys.h  \
    input/monkeyhandler.h \
    input/devicebuttonhandler.h  \
    input/input_event_codes.h \
    input/inputhandler.h      \
    input/shellkeyboardhandler.h \
    device/adbclient.h \
    device/deviceinfo.h \
    device/videothread.h

FORMS += \
    mainwindow.ui \
    aboutdialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res/divvydroid.qrc


INCLUDEPATH += $$PWD\ffmpeg\ffmpeg-4.0.2-win64-shared\include
LIBS += -L$$PWD\ffmpeg\ffmpeg-4.0.2-win64-shared\lib \
    -lavutil-56 \
    -lavcodec-58 \
    -lavdevice-58 \
    -lavfilter-7 \
    -lavformat-58 \
    -lpostproc-55 \
    -lswresample-3 \
    -lswscale-5 \
