include_directories(
  ${PROJECT_SOURCE_DIR}/dynload
  ${PROJECT_SOURCE_DIR}/dyncall
  ${PROJECT_SOURCE_DIR}/dyncallback
)
add_subdirectory(suite)
add_subdirectory(ellipsis)
add_subdirectory(suite2)
add_subdirectory(callf)
add_subdirectory(plain)
add_subdirectory(plain_c++)
add_subdirectory(suite3)
add_subdirectory(suite_floats)
add_subdirectory(callback_suite)
add_subdirectory(thunk)
add_subdirectory(malloc_wx)
add_subdirectory(callback_plain)
add_subdirectory(sharedlib)
add_subdirectory(nm)

if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "x86")
add_subdirectory(suite_x86win32fast)
add_subdirectory(suite_x86win32std)
add_subdirectory(suite2_x86win32fast)
add_subdirectory(suite2_x86win32std)
endif()

if(${UNIX})
add_subdirectory(syscall)
endif()

