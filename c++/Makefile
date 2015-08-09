LDFLAGS+=
CFLAGS+=-O2
CPPFLAGS+=-O3 -std=c++11


CPP_FILES = $(wildcard *.cpp)
CPP_BINARIES=$(CPP_FILES:%.cpp=%)

C_FILES=$(wildcard *.c)
C_BINARIES=$(C_FILES:%.c=%)

# all: binaries

binaries:  ${CPP_BINARIES} ${C_BINARIES}
	@echo "all done"

%:  %.cpp
	g++ -o $@ $< $(CPPFLAGS) $(LDFLAGS)

%:	%.c
	gcc -o $@ $< $(CFLAGS) $(LDFLAGS)

