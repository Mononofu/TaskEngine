#this is just a basic CMakeLists.txt, for more information see the cmake manpage
cmake_minimum_required(VERSION 2.6)

#add definitions, compiler switches, etc.
ADD_DEFINITIONS(-g0 -O3 -Wall -I/usr/local/include)

LINK_DIRECTORIES(/usr/lib /usr/local/lib)

#build a shared library
ADD_LIBRARY(taskengine SHARED InformationManager.cpp DataIdentifier.cpp Threadmanager.cpp Task.cpp SynchronisationBarrier.cpp debug.cpp DataContainer.cpp)


#for testing the shared library you probably need some test app too
ADD_EXECUTABLE(taskenginetest taskenginetest.cpp)

#need to link to some other libraries ? just add them here
TARGET_LINK_LIBRARIES(taskenginetest taskengine boost_thread boost_system boost_log boost_log_setup)

#add an install target here
FILE(GLOB files "${CMAKE_CURRENT_SOURCE_DIR}/*.h")
INSTALL(FILES ${files} DESTINATION include/taskengine)

INSTALL(TARGETS taskengine
  LIBRARY DESTINATION lib
)
