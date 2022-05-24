#pragma once

// Platform detection
#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__NT__)
    #ifdef _WIN64
        #define RAIN_PLATFORM_WINDOWS 1
    #else
        #error "32-bit is not supported!"
    #endif
#elif __linux__
    #define RAIN_PLATFORM_LINUX 1
#else
    #error "Your OS os not supported!"
#endif

// Import & Export
#ifdef REXPORT
    #ifdef _MSC_VER
        #define RAPI __declspec(dllexport)
    #else
        #define RAPI __attribute__((visibility("default")))
    #endif
#else
    #ifdef _MSC_VER
        #define RAPI __declspec(dllimport)
    #else
        #define RAPI
    #endif
#endif
