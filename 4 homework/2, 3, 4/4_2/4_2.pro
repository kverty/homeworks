TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    expressions.cpp \
    stack.cpp \
    digits.cpp

include(deployment.pri)
qtcAddDeployment()

HEADERS += \
    expressions.h \
    stack.h \
    digits.h

QMAKE_CXXFLAGS += -std=c++11
