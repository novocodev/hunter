# Copyright (c) 2015, Damien Buhl 
# All rights reserved.

if(DEFINED HUNTER_CMAKE_PROJECTS_LIBSODIUM_HUNTER_CMAKE)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LIBSODIUM_HUNTER_CMAKE 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libsodium
    VERSION
    "1.0.3"
    URL
    "https://github.com/novocodev/libsodium-CMake/archive/v1.0.45.tar.gz"
    SHA1
    128dd031ffa26ff028ac18af4eafdeac98ecdbab
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME libsodium)
