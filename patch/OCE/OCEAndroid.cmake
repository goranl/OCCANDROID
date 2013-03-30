SET(CMAKE_SYSTEM_NAME Linux)

### 
# Download android-ndk-rXX: (Linux XX-bit (x86))
#     http://developer.android.com/tools/sdk/ndk/index.html
#
# Create toolchain:
#     /android-ndk-rXX/build/tools/make-standalone-toolchain.sh 
#   --platform=android-X
#   --install-dir=$ndk/android-toolchain
#   --toolchain=arm-linux-androideabi-4.7 
#  
#   git clone git://github.com/tpaviot/oce.git
#   cd oce;
#   mkdir build; 
#   cd build;
#   cmake -DCMAKE_TOOLCHAIN_FILE=../OCEAndroid.cmake ..
#   make && sudo make install
###

# specify ndk toolchain
SET( TOOLCHAIN               /android-ndk-r8e/android-toolchain )

SET( CMAKE_FIND_ROOT_PATH    ${TOOLCHAIN} )
SET( CMAKE_C_COMPILER       "${TOOLCHAIN}/bin/arm-linux-androideabi-gcc"     )
SET( CMAKE_CXX_COMPILER     "${TOOLCHAIN}/bin/arm-linux-androideabi-g++"     ) 
SET( CMAKE_STRIP            "${TOOLCHAIN}/bin/arm-linux-androideabi-strip"   )
SET( CMAKE_AR               "${TOOLCHAIN}/bin/arm-linux-androideabi-ar"      )
SET( CMAKE_LINKER           "${TOOLCHAIN}/bin/arm-linux-androideabi-ld"      )
SET( CMAKE_NM               "${TOOLCHAIN}/bin/arm-linux-androideabi-nm"      )
SET( CMAKE_OBJCOPY          "${TOOLCHAIN}/bin/arm-linux-androideabi-objcopy" )
SET( CMAKE_OBJDUMP          "${TOOLCHAIN}/bin/arm-linux-androideabi-objdump" )
SET( CMAKE_RANLIB           "${TOOLCHAIN}/bin/arm-linux-androideabi-ranlib"  )  

SET( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
SET( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY  )
SET( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY  )

SET( OCE_DATAEXCHANGE        OFF )
SET( OCE_MODEL               OFF )
SET( OCE_OCAF                OFF )
SET( OCE_DRAW                OFF )
SET( OCE_BUILD_SHARED_LIB    ON  )
SET( OCE_VISUALISATION       OFF )
SET( OCE_NO_LIBRARY_VERSION  ON  )
