# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = app
TARGET = NeoLoader
QT += core sql network script widgets gui concurrent
!mac:!win32:QT += dbus
DEFINES += QT_NETWORK_LIB QT_DLL USING_QT QT_SCRIPT_LIB QT_SQL_LIB QT_WIDGETS_LIB QT_CONCURRENT_LIB
mac:DEFINES += CRYPTOPP_DISABLE_ASM
!mac:!win32:QMAKE_CXXFLAGS += -std=c++0x
!win32:QMAKE_CXXFLAGS += -w
!mac:unix:QMAKE_LFLAGS += -Wl,-rpath,'\$\$ORIGIN'
mac:QMAKE_CXXFLAGS += -std=c++11

!win32:QMAKE_LFLAGS +=-rdynamic

CONFIG(release, debug|release):{
QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
}
CONFIG(debug, debug|release):DESTDIR = ../Debug
CONFIG(release, debug|release):DESTDIR = ../Release
INCLUDEPATH += .
DEPENDPATH += .
#MOC_DIR += ./GeneratedFiles
#OBJECTS_DIR += ./ObjectFiles
#UI_DIR += ./GeneratedFiles
#RCC_DIR += ./GeneratedFiles
mac:INCLUDEPATH += /opt/local/include

win32:{
CONFIG(debug, debug|release):LIBS += -L../Debug/
CONFIG(release, debug|release):LIBS += -L../Release/
CONFIG(debug, debug|release):contains(QMAKE_HOST.arch, x86_64):LIBS += \
    -L../../NeoLoader/v8_64/build/Debug/lib/ \
    -L../../NeoLoader/crypto++x64/DLL_Output/Debug/ \
    -L../../NeoLoader/zlib/x64/Debug/ \
    -L../../NeoLoader/utp/x64/Debug/
CONFIG(debug, debug|release):!contains(QMAKE_HOST.arch, x86_64):LIBS += \
    -L../../NeoLoader/v8/build/Debug/lib/ \
    -L../../NeoLoader/crypto++/Win32/DLL_Output/Debug/ \
    -L../../NeoLoader/zlib/win32/Debug/ \
    -L../../NeoLoader/utp/win32/Debug/
CONFIG(release, debug|release):contains(QMAKE_HOST.arch, x86_64):LIBS += \
    -L../../NeoLoader/v8_64/build/Release/lib/ \
    -L../../NeoLoader/crypto++/x64/DLL_Output/Release/ \
    -L../../NeoLoader/zlib/x64/Release/ \
    -L../../NeoLoader/utp/x64/Release/
CONFIG(release, debug|release):!contains(QMAKE_HOST.arch, x86_64):LIBS += \
    -L../../NeoLoader/v8/build/Release/lib/ \
    -L../../NeoLoader/crypto++/Win32/DLL_Output/Release/ \
    -L../../NeoLoader/zlib/win32/Release/ \
    -L../../NeoLoader/utp/win32/Release/
LIBS += -lNeoHelper -lqjson -lqbencode -lNeoGUI -lNeoScriptTools -lDHT -lutp -lMiniUPnP -lWebBrowser -lqtservice -lqtsingleapp
LIBS += -lWs2_32 -loleaut32 -lole32
}

!win32:{
CONFIG(debug, debug|release):LIBS += -L$$OUT_PWD/../Debug/
CONFIG(release, debug|release):LIBS += -L$$OUT_PWD/../Release/
LIBS += \
    -L$$OUT_PWD/../../NeoLoader/crypto++/ \
    -L$$OUT_PWD/../../NeoLoader/utp/
!mac:contains(QMAKE_HOST.arch, x86_64):LIBS += -L$$OUT_PWD/../../../Google/v8/out/x64.release/lib.target/
!mac:!contains(QMAKE_HOST.arch, x86_64):LIBS += -L$$OUT_PWD/../../../Google/v8/out/ia32.release/lib.target/
mac:LIBS += -L$$OUT_PWD/../../../Google/v8/out/x64.release/
LIBS += -lNeoHelper -lqjson -lqbencode -lcryptopp -lNeoGUI -lqwt -lNeoScriptTools -lDHT -lutp -lMiniUPnP -lWebBrowser -lqtftp -lv8 -lqtservice -lqtsingleapp -lz -lutil -lqtping  -licuuc -licui18n -lv8_libplatform
!mac:LIBS += -lboost_regex
mac:LIBS += $$OUT_PWD/../../../libboost_regex-mt.dylib

!mac:DEFINES += "FUSE_USE_VERSION=26 -D_FILE_OFFSET_BITS=64"
!mac:LIBS += -lfuse
}

CONFIG += precompile_header
PRECOMPILED_HEADER = GlobalHeader.h

include(NeoLoader.pri)
win32:RC_FILE = NeoLoader.rc
