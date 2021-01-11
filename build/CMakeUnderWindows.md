# Why do I need a good build system?

    You want to avoid hard-coding paths
    You need to build a package on more than one computer
    You want to use CI (continuous integration)
    You need to support different OSs (maybe even just flavors of Unix)
    You want to support multiple compilers
    You want to use an IDE, but maybe not all of the time
    You want to describe how your program is structured logically, not flags and commands
    You want to use a library
    You want to use tools, like Clang-Tidy, to help you code
    You want to use a debugger

If so, you'll benefit from a CMake-like build system.

In this case, I want to use the **FMILibrary** for the **pyfmi** package 

# Installing CMake under Windows
Download offical installer or binary distributions: 
<https://cmake.org/download/>
and check if the installation is successful:
```batch
cmake -version
```
