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

test-objc: myclass.o test-objc.o
	$(CC) $(CFLAGS) -o $(@) $(?) $(LIBOBJC)

myclass.o: myclass.m
	$(CC) $(CFLAGS) -c $(?) -o $(@)

test-objc.o: test.m
	$(CC) $(CFLAGS) -c $(?) -o $(@) 

test-c: test-c.o
	$(CC) $(CFLAGS) -o $(@) $(?)

test-c.o: test.c
	$(CC) $(CFLAGS) -c $(?) -o $(@)

clean:
	rm -rf *.o test-*

cleano:
	rm -rf *.o
