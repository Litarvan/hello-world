cmake_minimum_required(VERSION 3.0)
project(hello-world)

set(CMAKE_CXX_STANDARD 20)

find_package(Boost 1.63 COMPONENTS log REQUIRED)
include_directories(${Boost_INCLUDE_DIR})

add_executable(hello-world main.cpp)
target_link_libraries(hello-world LINK_PUBLIC ${Boost_LIBRARIES})

install(TARGETS hello-world RUNTIME DESTINATION bin)
