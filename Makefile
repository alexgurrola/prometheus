# Makefile for Vexis OS x86

# Directory Locations
MAIN=src
VERSILIS=versilis

# File Locations
SOURCES=$(MAIN)/main.o $(VERSILIS)/common.o $(VERSILIS)/cpu.o 
        #$(VERSILIS)/emotion.o $(VERSILIS)/error.o $(VERSILIS)/http.o \
        #$(VERSILIS)/json.o $(VERSILIS)/netsock.o $(VERSILIS)/text.o

# Detect OS
UNAME := $(shell uname)

# Compilers (Universal)
AS=nasm
ASFLAGS=-felf

#Compilers (Platform)
ifeq ($(UNAME), Linux)
CC=gcc
CFLAGS=-nostdlib -nostdinc -fno-builtin -m32
#CFLAGS=-nostdlib -nostdinc -fno-builtin -m64
CXX=g++
#CXXFLAGS=
CPP=cpp
#CPPFLAGS=
LD=ld
LDFLAGS=-Tlink.ld -melf_i386
endif

ifeq ($(UNAME), Darwin)
CC=gcc-5
CFLAGS=-nostdlib -nostdinc -fno-builtin -m32
#CFLAGS=-nostdlib -nostdinc -fno-builtin -m64
CXX=g++-5
CXX=g++-5
#CXXFLAGS=
CPP=g++-5
#CPPFLAGS=
LD=gcc-5
LDFLAGS=
endif

# Make Silent
.SILENT:

# User Functions
all: $(SOURCES) link

clean:
	-rm bin/main src/*/*.o

link:
	$(LD) $(LDFLAGS) -o bin/main $(SOURCES)

.s.o:
	$(AS) $(ASFLAGS) $<
