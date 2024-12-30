# ida-cmake CMakeLists for the CatBert file loader plugin and the pigletvm processor module

cmake_minimum_required(VERSION 3.27 FATAL_ERROR)

project(pigletvm)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include($ENV{IDASDK}/ida-cmake/common.cmake)

#
# File loader
#

set(LOADER_NAME    catbert_ldr)
set(LOADER_SOURCES catbert_ldr.cpp common.h)
generate()
disable_ida_warnings(catbert_ldr)

#
# Processor module
#

set(PROCMOD_NAME pigletvm_proc)
set(PROCMOD_SOURCES ins.cpp ins.hpp 
                    pigletvm.hpp common.h
                    ana.cpp 
                    reg.cpp 
                    out.cpp 
                    emu.cpp)
generate()
disable_ida_warnings(pigletvm_proc)
