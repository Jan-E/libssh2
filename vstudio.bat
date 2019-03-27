echo off

echo %VSTUDIO% %platform%
if "%platform%"=="x64" goto x64

:x86

if "%VSTUDIO%"=="VS2008" call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
if "%VSTUDIO%"=="VS2012" call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86
if "%VSTUDIO%"=="VS2013" call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86
if "%VSTUDIO%"=="VS2015" call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86 8.1
if "%VSTUDIO%"=="VS2017" call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
goto done

:x64

if "%VSTUDIO%"=="VS2008" call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86_amd64
if "%VSTUDIO%"=="VS2012" call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat" x86_amd64
if "%VSTUDIO%"=="VS2013" call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64
if "%VSTUDIO%"=="VS2015" call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64 8.1
if "%VSTUDIO%"=="VS2017" call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

:done
where cl || exit /b 0
where devenv || exit /b 0