
rem cl arducopter\*.cpp  /std:c++latest /P /C  /MP  -I.. -I..\libunistd\unistd -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-I../../libraries"       "-I../../libraries/AP_Common/missing" -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE

rem pause

rem cl arducopter\arducopter.cpp /c  /showIncludes  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I.. -I..\portable-snippets -I..\pthread /GR /MP  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE  /link /LIBPATH:.;..

cl arducopter\*.cpp  libcpp\*.lib /LD  /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL  -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..;libcpp


rem cl libraries\AP_HAL_Empty\HAL_Empty_Class.cpp  /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread   -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-I../../libraries"       "-I../../libraries/AP_Common/missing" -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..

rem cl libraries\AP_HAL\*.cpp   /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread   -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-I../../libraries"       "-I../../libraries/AP_Common/missing" -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..

cl libraries\AP_HAL_SITL\*.cpp libcpp\*.lib /Folibcpp\  -DPSNIP_BUILTIN_EMULATE_NATIVE  /FI ..\portable-snippets\builtin\builtin.h /FI ..\portable-snippets\random\random.h  -I..\portable-snippets -I..\pthread -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE -DSKETCHBOOK -DSKETCH="ArduCopter"
lib libcpp\*.obj /out:libcpp\AP_HAL_SITL.lib


rem cl libraries\SITL\SITL.cpp  /showIncludes  /w /GR /MP  -I.. -I..\portable-snippets\builtin -I..\libunistd\unistd -I..\portable-snippets -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-I../../libraries"       "-I../../libraries/AP_Common/missing" -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..
rem cl libraries\AP_Param\*.cpp  /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..;libcpp
rem cl libraries\GCS_MAVLink\*.cpp  /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..;libcpp
rem cl libraries\AP_RangeFinder\*.cpp  /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..;libcpp
rem cl libraries\AP_HAL\utility\*.cpp  /w /GR /MP  -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h -I..\portable-snippets  -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing"  -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE /link /LIBPATH:.;..;libcpp


pause

/showIncludes

@echo off

for /F %%i in ("AP_HAL\utility") do (
mkdir libcpp
mkdir libcpp\%%i
cl libraries\%%i\*.cpp /c /LD /w  /MP /Folibcpp\%%i\ -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h /FI ..\portable-snippets\random\random.h -I.. -I..\portable-snippets -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing" -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE
lib libcpp\%%i\*.obj /out:libcpp\utility.lib
)

for /F %%i in ('dir /b libraries') do (
mkdir libcpp
mkdir libcpp\%%i
cl libraries\%%i\*.cpp /c /LD /w  /MP /Folibcpp\%%i\ -DPSNIP_BUILTIN_EMULATE_NATIVE /FI ..\portable-snippets\builtin\builtin.h /FI ..\portable-snippets\random\random.h -I.. -I..\portable-snippets -I..\pthread  -Ibuild\sitl  -Ibuild\sitl\libraries\GCS_MAVLink   "-Ilibraries"       "-Ilibraries/GCS_MAVLink"      "-I."       "-Ilibraries"       "-Ilibraries/AP_Common/missing" -I../libunistd/unistd -DCONFIG_HAL_BOARD=HAL_BOARD_SITL -DCONFIG_HAL_BOARD_SUBTYPE=HAL_BOARD_SUBTYPE_NONE
lib libcpp\%%i\*.obj /out:libcpp\%%i.lib
)




struct\s+([^\s]+)\s+([^\s=]+)\s*=\s*\{([^\}]+)\}\s*;

(struct [^=]+ = \{)[^}]+LOG_PACKET_HEADER_INIT[^}]+(\})
\1\2


args \.\.\.(.*)args

\.\.\. \1 __VA_ARGS__

## args
## __VA_ARGS__