bambustudio_add_cmake_project(
    CGAL
    # GIT_REPOSITORY https://github.com/CGAL/cgal.git
    # GIT_TAG        caacd806dc55c61cc68adaad99f2240f00493b29 # releases/CGAL-5.3
    # For whatever reason, this keeps downloading forever (repeats downloads if finished)
    URL      https://github.com/CGAL/cgal/archive/refs/tags/v6.0.1.zip
    URL_HASH SHA256=6aa3837ebcefc39a53a7e6ac8ac08d7695d942e2eaab3709dc43da118cd10bc4
    DEPENDS ${BOOST_PKG} dep_GMP dep_MPFR
)

include(GNUInstallDirs)
