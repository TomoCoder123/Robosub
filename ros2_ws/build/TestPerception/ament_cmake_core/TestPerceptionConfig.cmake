# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_TestPerception_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED TestPerception_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(TestPerception_FOUND FALSE)
  elseif(NOT TestPerception_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(TestPerception_FOUND FALSE)
  endif()
  return()
endif()
set(_TestPerception_CONFIG_INCLUDED TRUE)

# output package information
if(NOT TestPerception_FIND_QUIETLY)
  message(STATUS "Found TestPerception: 0.0.0 (${TestPerception_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'TestPerception' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${TestPerception_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(TestPerception_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${TestPerception_DIR}/${_extra}")
endforeach()
