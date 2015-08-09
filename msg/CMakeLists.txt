project(msgtest)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FALGS} -std=c++11")

add_executable(snd snd.cpp)
add_executable(rcv rcv.cpp)
