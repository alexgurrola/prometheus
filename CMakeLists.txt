cmake_minimum_required(VERSION 3.5)
project(prometheus)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES src/main.cpp versilis/common.cpp versilis/cpu.cpp)
add_executable(prometheus ${SOURCE_FILES})