if (APPLE)
    # Only disable NEON extension for Apple ARM builds, leave it enabled for Raspberry PI.
    set(_disable_neon_extension "-DPNG_ARM_NEON=off")
else ()
    set(_disable_neon_extension "")
endif ()

#set(_patch_step "")
#if (APPLE)
#    set(_patch_step PATCH_COMMAND ${PATCH_CMD} ${CMAKE_CURRENT_LIST_DIR}/PNG.patch)
#endif ()

bambustudio_add_cmake_project(PNG 
    # GIT_REPOSITORY https://github.com/glennrp/libpng.git 
    # GIT_TAG v1.6.50
    URL https://github.com/pnggroup/libpng/archive/refs/tags/v1.6.50.zip
    URL_HASH SHA256=f6bb2544d2cf5465af3a695dee0b7eacff82f11a50aa4672ef0e19df6e16d455
    DEPENDS ${ZLIB_PKG}
    "${_patch_step}"
    CMAKE_ARGS
        -DPNG_SHARED=OFF
        -DPNG_STATIC=ON
        -DPNG_PREFIX=prusaslicer_
        -DPNG_TESTS=OFF
        -DDISABLE_DEPENDENCY_TRACKING=OFF
        ${_disable_neon_extension}
)

if (MSVC)
    add_debug_dep(dep_PNG)
endif ()
