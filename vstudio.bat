echo off

echo %VC_VERSION% %platform%
if "%platform%"=="x64" goto x64

:x86

if "%VC_VERSION%"=="VC9" call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
if "%VC_VERSION%"=="VC11" call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86
if "%VC_VERSION%"=="VC12" call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86
if "%VC_VERSION%"=="VC14" call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86 8.1
if "%VC_VERSION%"=="VC15" call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
goto done

:x64

if "%VC_VERSION%"=="VC9" call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86_amd64
if "%VC_VERSION%"=="VC11" call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86_amd64
if "%VC_VERSION%"=="VC12" call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64
if "%VC_VERSION%"=="VC14" call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64 8.1
if "%VC_VERSION%"=="VC15" call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

:done
where cl || exit /b 0
where devenv || exit /b 0