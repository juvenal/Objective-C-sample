#
#
#
#
#
#

CC = gcc
CFLAGS = -O3 -Wall
LIBOBJC = -l objc

all: test-objc test-c

test-objc: test-objc.o
	$(CC) $(CFLAGS) $(?) -o $(@) $(LIBOBJC)

test-objc.o: test.m
	$(CC) $(CFLAGS) -c $(?) -o $(@) 

test-c: test-c.o
	$(CC) $(CFLAGS) $(?) -o $(@)

test-c.o: test.c
	$(CC) $(CFLAGS) -c $(?) -o $(@)

clean:
	rm -rf *.o test-*

cleano:
	rm -rf *.o
