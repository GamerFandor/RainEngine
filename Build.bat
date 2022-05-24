@ECHO off

:: Title
echo Build everything
echo ------------------------------------

:: Make 'Binaries' folder
if not exist Binaries (mkdir Binaries)

:: Build Engine
cd Engine
make -f "Build.Windows.mak" all
IF %ERRORLEVEL% NEQ 0 (echo Error:%ERRORLEVEL% && exit)
cd ..

:: Build Editor
cd Editor
make -f "Build.Windows.mak" all
IF %ERRORLEVEL% NEQ 0 (echo Error:%ERRORLEVEL% && exit)
cd ..

echo.
echo Engine has been built successfully.
