if (MSVC)
    set(_use_IPP "-DWITH_IPP=ON")
else ()
    set(_use_IPP "-DWITH_IPP=OFF")
endif ()

bambustudio_add_cmake_project(OpenCV
        URL https://github.com/opencv/opencv/archive/refs/tags/4.12.0.zip
        URL_HASH SHA256=fa3faf7581f1fa943c9e670cf57dd6ba1c5b4178f363a188a2c8bff1eb28b7e4
        #    PATCH_COMMAND ${GIT_EXECUTABLE} apply --directory deps/build/dep_OpenCV-prefix/src/dep_OpenCV --verbose --ignore-space-change --whitespace=fix ${CMAKE_CURRENT_LIST_DIR}/0001-OpenCV-fix.patch
        CMAKE_ARGS
        -DBUILD_SHARED_LIBS=0
        -DBUILD_PERE_TESTS=OFF
        -DBUILD_TESTS=OFF
        -DBUILD_opencv_python_tests=OFF
        -DBUILD_EXAMPLES=OFF
        -DBUILD_JASPER=OFF
        -DBUILD_JAVA=OFF
        -DBUILD_JPEG=ON
        -DBUILD_APPS_LIST=version
        -DBUILD_opencv_apps=OFF
        -DBUILD_opencv_java=OFF
        -DBUILD_OPENEXR=OFF
        -DBUILD_PNG=ON
        -DBUILD_TBB=OFF
        -DBUILD_WEBP=OFF
        -DBUILD_ZLIB=OFF
        -DWITH_1394=OFF
        -DWITH_CUDA=OFF
        -DWITH_EIGEN=OFF
        ${_use_IPP}
        -DWITH_ITT=OFF
        -DWITH_FFMPEG=OFF
        -DWITH_GPHOTO2=OFF
        -DWITH_GSTREAMER=OFF
        -DOPENCV_GAPI_GSTREAMER=OFF
        -DWITH_GTK_2_X=OFF
        -DWITH_JASPER=OFF
        -DWITH_LAPACK=OFF
        -DWITH_MATLAB=OFF
        -DWITH_MFX=OFF
        -DWITH_DIRECTX=OFF
        -DWITH_DIRECTML=OFF
        -DWITH_OPENCL=OFF
        -DWITH_OPENCL_D3D11_NV=OFF
        -DWITH_OPENCLAMDBLAS=OFF
        -DWITH_OPENCLAMDFFT=OFF
        -DWITH_OPENEXR=OFF
        -DWITH_OPENJPEG=OFF
        -DWITH_QUIRC=OFF
        -DWITH_VTK=OFF
        -DWITH_WEBP=OFF
        -DENABLE_PRECOMPILED_HEADERS=OFF
        -DINSTALL_TESTS=OFF
        -DINSTALL_C_EXAMPLES=OFF
        -DINSTALL_PYTHON_EXAMPLES=OFF
        -DOPENCV_GENERATE_SETUPVARS=OFF
        -DOPENCV_INSTALL_FFMPEG_DOWNLOAD_SCRIPT=OFF
        -DBUILD_opencv_python2=OFF
        -DBUILD_opencv_python3=OFF
        -DWITH_OPENVINO=OFF
        -DWITH_INF_ENGINE=OFF
        -DWITH_NGRAPH=OFF
        -DBUILD_WITH_STATIC_CRT=OFF#set /MDd /MD
        -DBUILD_LIST=core,imgcodecs,imgproc,world
        -DBUILD_opencv_highgui=OFF
        -DWITH_ADE=OFF
        -DBUILD_opencv_world=ON
        -DWITH_PROTOBUF=OFF
        -DWITH_WIN32UI=OFF
        -DHAVE_WIN32UI=FALSE
        -DWITH_AVIF=OFF
)
