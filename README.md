# Description
This is a toy application demonstrating a use case where we have a closed-source vendor library ([`HelloModule`](./HelloModule/)) distributed as a Windows binary (`.lib`/`.dll`/`.swiftinterface`) which we want to consume ([`ClientApp`](./ClientApp/)).

# How to test
There are two separate `.bat` scripts that effectively do the same thing:

1. [build_and_run_swiftc.bat](./build_and_run_swiftc.bat). Uses the `swiftc` compiler directly as a lower-level approach to build everything and run the resulting application.
2. [build_and_run_swift_build.bat](./build_and_run_swift_build.bat). Same, but uses `swift build` to demonstrate integration into the Swift build system.