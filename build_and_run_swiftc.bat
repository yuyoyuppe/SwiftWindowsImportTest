@REM Clean all artifacts
git clean -xfd

@REM Build the module
cd HelloModule
swift build -Xswiftc -enable-library-evolution -Xswiftc -emit-module-interface-path -Xswiftc HelloModule.swiftinterface
cd ..


@REM Copy the module artifacts to the client app directories
cd ClientApp
cp ..\HelloModule\HelloModule.swiftinterface .\Sources\ClientApp\
cp ..\HelloModule\HelloModule.private.swiftinterface .\Sources\ClientApp\
cp ..\HelloModule\.build\Debug\HelloModule.dll .
cp ..\HelloModule\.build\Debug\HelloModule.lib .

@REM Build the client app that uses the module
swiftc -o ClientApp.exe .\Sources\ClientApp\main.swift -L. -lHelloModule -I.\Sources\ClientApp\ -enable-library-evolution

@REM Test it!
.\ClientApp.exe

cd ..