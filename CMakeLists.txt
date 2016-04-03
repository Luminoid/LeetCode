cmake_minimum_required(VERSION 3.3)
project(ProxyLab)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES TwoSum.cpp)
add_executable(LeetCode ${SOURCE_FILES})