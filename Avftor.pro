lessThan(QT_VERSION, 5.0) {
	error("Avftor requires Qt 5.  Are you using the right qmake executable?")
}

BRANCH = $$system(git rev-parse --abbrev-ref HEAD)

isEqual(BRANCH, "master") {
	message("Building in RELEASE mode")
	CONFIG += release
} else {
	message("Building in DEBUG mode")
	CONFIG += debug
}

CONFIG += c++11
TARGET = avftor

debug {
	CONFIG += warn_on
} else {
	DEFINES += NDEBUG
}
VERSION = $$system(git describe --always --tags --dirty)
DEFINES += VERSIONSTR=\\\"$${VERSION}\\\"
message("Version: $${VERSION}")

SOURCES += src/main.cpp
