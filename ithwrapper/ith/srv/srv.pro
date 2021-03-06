# srv.pro
# 8/9/2013 jichi
# Build vnrsrv

include(../dllconfig.pri)
include(../sys/sys.pri)

# 9/22/2013: When ITH is on wine, certain NT functions are replaced
#DEFINES += ITH_WINE

# 9/27/2013: Only for debugging purpose
#DEFINES += ITH_DISABLE_REPEAT  # disable repetition elimination
#DEFINES += ITH_DISABLE_FILTER  # disable space filter in pipe

## Libraries

LIBS    += -lkernel32 -luser32 -lcomctl32

## Sources

TEMPLATE = lib
#TARGET   = IHF # compatible with ITHv3
TARGET   = vnrsrv

#CONFIG += staticlib

HEADERS += \
  config.h \
  hookman.h \
  hookman_p.h \
  settings.h \
  srv.h \
  srv_p.h \
  textthread.h \
  textthread_p.h
  #util.h

SOURCES += \
  hookman.cc \
  main.cc \
  pipe.cc \
  textthread.cc
  #util.cc

#RC_FILE += engine.rc
#OTHER_FILES += engine.rc

OTHER_FILES += srv.pri

# EOF
