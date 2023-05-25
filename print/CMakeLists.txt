cmake_minimum_required (VERSION 3.2)
project (libprint)


add_library(libprint STATIC print.cpp)


include(CPack.cmake)
