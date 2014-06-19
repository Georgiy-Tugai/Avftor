CONFIG += debug


CONFIG += c++11
debug {
	CONFIG += warn_on
}

SOURCES += test.cpp
