# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_libot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED libot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(libot_FOUND FALSE)
  elseif(NOT libot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(libot_FOUND FALSE)
  endif()
  return()
endif()
set(_libot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT libot_FIND_QUIETLY)
  message(STATUS "Found libot: 0.0.0 (${libot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'libot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${libot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(libot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${libot_DIR}/${_extra}")
endforeach()
