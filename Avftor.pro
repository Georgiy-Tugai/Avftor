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
	VERSION = $$system(git rev-parse --short HEAD)
	DEFINES += VERSIONSTR=\\\"git.$${VERSION}\\\"
	message("Version: git.$${VERSION}")
} else {
	VERSION = $$system(git describe --abbrev=0 --tags)
	isEmpty(VERSION) {
		VERSION = -1
		warning(Oops, version is empty, are there no tags yet?)
	}
	DEFINES += VERSIONSTR=\\\"$${VERSION}\\\"
	message("Version: $${VERSION}")
}

SOURCES += src/main.cpp
