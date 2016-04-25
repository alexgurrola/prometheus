cmake_minimum_required(VERSION 3.5)
project(prometheus)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES src/main.cpp versilis/common.cpp versilis/cpu.cpp versilis/emotion.cpp versilis/error.cpp versilis/json.cpp versilis/http.cpp versilis/netsock.cpp versilis/text.cpp)
add_executable(prometheus ${SOURCE_FILES})