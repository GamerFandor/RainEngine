COMPILER := clang++								# The compiler that will be used
SOURCE_FILES := $(wildcard Source/*.cpp)		# Every single files that ends with '.cpp'
COMPILER_FLAGS := -g -shared					# Compiler flags: -g -> allows debuging, -shared -> can be compiled into a library
OUTPUT := ../Binaries/Engine.dll				# The output name and location
INCLUDE_FLAGS := -ISource						# Location of the header files
LINKER_FLAGS := -luser32						# Linking necessary external libraries
DEFINES := -REXPORT								# Defining code related flags

all:
	$(COMPILER) $(SOURCE_FILES) $(COMPILER_FLAGS) -o $(OUTPUT) $(INCLUDE_FLAGS) $(LINKER_FLAGS) $(DEFINES)
