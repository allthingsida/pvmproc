# ida-cmake CMakeLists for the CatBert file loader and the pigletvm processor module

cmake_minimum_required(VERSION 3.27 FATAL_ERROR)

project(pigletvm)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include IDA SDK bootstrap
include($ENV{IDASDK}/ida-cmake/bootstrap.cmake)
find_package(idasdk REQUIRED)

#
# File loader
#

ida_add_loader(catbert_ldr
    SOURCES
        catbert_ldr.cpp
        common.h
)

#
# Processor module
#

ida_add_procmod(pigletvm_proc
    SOURCES
        ins.cpp
        ins.hpp
        pigletvm.hpp
        common.h
        ana.cpp
        reg.cpp
        out.cpp
        emu.cpp
)
