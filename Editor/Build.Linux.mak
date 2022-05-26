COMPILER := clang++								# The compiler that will be used
SOURCE_FILES := $(wildcard Source/*.cpp)		# Every single files that ends with '.cpp'
COMPILER_FLAGS := -g							# Compiler flags: -g -> allows debuging
OUTPUT := ../Binaries/Editor					# The output name and location
INCLUDE_FLAGS := -ISource -I../Engine/Source	# Location of the header files
LINKER_FLAGS := -L../Binaries -lEngine			# Linking 'Engine.so'
DEFINES := -RIMPORT								# Defining code related flags

all:
	$(COMPILER) $(SOURCE_FILES) $(COMPILER_FLAGS) -o $(OUTPUT) $(INCLUDE_FLAGS) $(LINKER_FLAGS) $(DEFINES)
