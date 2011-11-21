Notes on building with CMake
----------------------------

Build with CMake (in-source)
----------------------------
cd <dyncall-source-dir>
cmake .
make -f Makefile

NOTE: The "-f Makefile" flag !
If you build in-source make sure to specify the makefile with "-f Makefile".
Otherwise the GNUmakfile files will be used by make that originate from 
buildsys/gmake.


Install in a specific location
------------------------------
cmake -DCMAKE_INSTALL_PREFIX=<absolute-path>


Tested settings
---------------
- CMake Unix Makefile generators on Mac OS X and Linux.


Using from other CMake-based projects
-------------------------------------
Under buildsys/cmake/Modules you find some Find*() scripts
which you might find useful.

