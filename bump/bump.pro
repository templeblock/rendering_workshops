######################################################################
# Automatically generated by qmake (3.0) Thu Jan 26 16:35:29 2017
######################################################################

include(../common/common.pri)
TARGET = bump

# Input
HEADERS += src/bumpscene.h \
           ../common/include/camera.h \
           ../common/include/scene.h \
           ../common/include/trackballcamera.h
SOURCES += src/main.cpp src/bumpscene.cpp \
           ../common/src/camera.cpp \
           ../common/src/scene.cpp \
           ../common/src/trackballcamera.cpp

OTHER_FILES += shaders/bump_vert.glsl \
               shaders/bump_frag.glsl \
               README.md

DISTFILES += $OTHER_FILES
