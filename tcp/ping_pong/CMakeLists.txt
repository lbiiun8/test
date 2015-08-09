project(tcp_delay_test)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_executable( pong pong.cpp)
add_executable(ping ping.cpp TimeCost.cpp)

