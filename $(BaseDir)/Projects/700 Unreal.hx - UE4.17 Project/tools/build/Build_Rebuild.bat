:: //////////////////////////////////////////////////////////////////////////////////////

@echo off
call ..\Setup.bat
call ..\tasks\BuildUtils.bat

:: //////////////////////////////////////////////////////////////////////////////////////

@echo on
"%ENGINE_PATH%\Engine\Build\BatchFiles\ReBuild.bat" %PROJECT_NAME%%EDITOR_BUILD_CONFIG% %EDITOR_BUILD_PLATFORM% %EDITOR_BUILD_TARGET% %PROJECT_FILE% -waitmutex
