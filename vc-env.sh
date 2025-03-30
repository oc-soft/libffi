declare WINKIT_VER=10.0.22621.0
declare MSVC_VER=14.43.34808

declare WINKIT_ROOT=/cygdrive/c/Program\ Files\ \(x86\)/Windows\ Kits/10
declare MSVC_ROOT=/cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2022/BuildTools/VC/Tools/MSVC/$MSVC_VER

declare WINKIT_LIB_PATH=$WINKIT_ROOT/Lib/$WINKIT_VER/um/x64
declare WINKIT_INCLUDE_SHARED=$WINKIT_ROOT/Include/$WINKIT_VER/shared
declare WINKIT_INCLUDE_UCRT=$WINKIT_ROOT/Include/$WINKIT_VER/ucrt
declare WINKIT_INCLUDE_UM=$WINKIT_ROOT/Include/$WINKIT_VER/um

declare WINKIT_UCRT_ENCLAVE_PATH=$WINKIT_ROOT/Lib/$WINKIT_VER/ucrt_enclave/x64
declare WINKIT_UCRT_LIB_PATH=$WINKIT_ROOT/Lib/$WINKIT_VER/ucrt/x64

declare MSVC_BIN_PATH=$MSVC_ROOT/bin/Hostx64/x64
declare MSVC_LIB_PATH=$MSVC_ROOT/lib/x64
declare MSVC_LIB_UWP=$MSVC_LIB_PATH/uwp
declare MSVC_INCLUDE=$MSVC_ROOT/include


PATH=$MSVC_BIN_PATH:$PATH

export LIB=`cygpath -w "$MSVC_LIB_PATH"`\;`cygpath -w "$MSVC_LIB_UWP"`\;`cygpath -w "$WINKIT_LIB_PATH"`\;`cygpath -w "$WINKIT_UCRT_ENCLAVE_PATH"`\;`cygpath -w "$WINKIT_UCRT_LIB_PATH"`

export INCLUDE=`cygpath -w "$WINKIT_INCLUDE_SHARED"`\;`cygpath -w "$WINKIT_INCLUDE_UCRT"`\;`cygpath -w "$WINKIT_INCLUDE_UM"`\;`cygpath -w "$MSVC_INCLUDE"`
