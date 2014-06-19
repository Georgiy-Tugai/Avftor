cmake_minimum_required(VERSION 2.8.11)

project(Avftor)

set(CMAKE_AUTOMOC ON)
find_package(Qt5Widgets)

add_executable(avftor test.cpp)
target_link_libraries(avftor Qt5::Widgets)
