bambustudio_add_cmake_project(
    TBB
    URL "https://github.com/uxlfoundation/oneTBB/archive/refs/tags/v2022.2.0.zip"
    URL_HASH SHA256=5470ccd4d127c6d680e46fee016531e452dc653d8eb1a40bd78ff087600fa582
    #PATCH_COMMAND ${PATCH_CMD} ${CMAKE_CURRENT_LIST_DIR}/0001-TBB-GCC13.patch
    CMAKE_ARGS          
        -DTBB_BUILD_SHARED=OFF
        -DTBB_BUILD_TESTS=OFF
        -DTBB_TEST=OFF
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON
        -DCMAKE_DEBUG_POSTFIX=_debug
)

if (MSVC)
    add_debug_dep(dep_TBB)
endif ()


