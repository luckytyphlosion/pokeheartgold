cmake_minimum_required (VERSION 3.15)
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
project(PokeHeartGold)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 11)

enable_language(ASM)

if(APPLE)
    include_directories(/usr/local/include)
endif(APPLE)

add_compile_options(-fms-extensions)

file(GLOB_RECURSE SOURCES "*.c" "*.cpp" "*.s")

add_executable(PokeHeartGold ${SOURCES})
target_include_directories(PokeHeartGold PRIVATE include files lib/include lib/include/cw lib/include/nitro lib/include/nnsys lib/include/nitro/os)
target_compile_definitions(PokeHeartGold PUBLIC __CLION_IDE__)
