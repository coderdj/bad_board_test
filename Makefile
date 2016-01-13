# crash_test makefile
# requires CAENVMElib

CC	= g++
CFLAGS	= -Wall -g -DLINUX -fPIC
LDFLAGS = -lCAENVME
SOURCES = $(shell echo ./*cc)
OBJECTS = $(SOURCES: .cc=.o)
CPP	= bad_board_test

all: $(SOURCES) $(CPP)

$(CPP) : $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $(CPP)

clean: 
	rm $(CPP)
