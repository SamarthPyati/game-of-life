CC=cc
OPT=-O0
INCLUDES=-I. 
CFLAGS=-Wall -Wextra -std=c17 $(OPT) $(INCLUDES)

TARGET=gol

RAYLIB=`pkg-config --libs --cflags raylib`

all: build 

build: $(TARGET).c
	$(CC) $(CFLAGS) $(RAYLIB) -o $(TARGET) $< 

.PHONY: clean
clean: 
	rm gol 