lessThan(QT_VERSION, 5.0) {
	error("Avftor requires Qt 5.  Are you using the right qmake executable?")
}

BRANCH = $$system(git rev-parse --abbrev-ref HEAD)
VERSION = $$system(git describe --always --tags --dirty)

isEqual(BRANCH, "master") {
	message("Building in RELEASE mode")
	CONFIG += release
} else {
	message("[$${BRANCH}] Building in DEBUG mode")
	VERSION = "$${BRANCH}-$${VERSION}"
	CONFIG += debug
	CONFIG += warn_on
}

CONFIG += c++11
TARGET = avftor

DEFINES += VERSIONSTR=\\\"$${VERSION}\\\"
message("Version: $${VERSION}")

SOURCES += src/main.cpp
