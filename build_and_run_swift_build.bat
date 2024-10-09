@REM Clean all artifacts
git clean -xfd

@REM Build the module
cd HelloModule
swift build
cd ..

@REM Copy the module artifacts to the client app directories
cd ClientApp
mkdir .\deps\HelloModule\
cp ..\HelloModule\.build\x86_64-unknown-windows-msvc\debug\HelloModule.lib .\deps\HelloModule\
cp ..\HelloModule\.build\x86_64-unknown-windows-msvc\debug\HelloModule.dll .\deps\HelloModule\
cp ..\HelloModule\.build\x86_64-unknown-windows-msvc\debug\Modules\HelloModule.swiftinterface .\deps\HelloModule\
cp ..\HelloModule\.build\x86_64-unknown-windows-msvc\debug\Modules\HelloModule.private.swiftinterface .\deps\HelloModule\

@REM Build the client app that uses the module with swift build
swift build

@REM Copy the .dll to the same directory as client .exe
cp .\deps\HelloModule\HelloModule.dll .\.build\x86_64-unknown-windows-msvc\debug\

@REM Test it!
.\.build\x86_64-unknown-windows-msvc\debug\ClientApp.exe

cd ..
