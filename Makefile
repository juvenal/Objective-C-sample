#
#
#
#
#
#

platform:=$(shell uname | tr [:upper:] [:lower:])

ifeq ($(platform),darwin)
    CC = clang
    CFLAGS = -O3 -Wall -D__$(platform)__
    LIBOBJC = -framework Foundation
    LIBTHRD = -l pthread
else
    baselib:=$(shell [[ -f /usr/include/Foundation/Foundation.h ]] && echo "GNUStep")
    ifeq ($(baselib),GNUStep)
        CC = gcc
        CFLAGS = -O3 -Wall -D__$(baselib)__
        LIBOBJC = -l gnustep-base -l objc
        LIBTHRD = -l pthread
    else
        CC = gcc
        CFLAGS = -O3 -Wall
        LIBOBJC = -l objc
        LIBTHRD = -l pthread
    endif
endif

all: test-objc test-c

test-objc: myclass.o test-objc.o
	$(CC) $(CFLAGS) -o $(@) $(?) $(LIBOBJC) $(LIBTHRD)

myclass.o: myclass.m
	$(CC) $(CFLAGS) -c $(?) -o $(@)

test-objc.o: test.m
	$(CC) $(CFLAGS) -c $(?) -o $(@) 

test-c: test-c.o
	$(CC) $(CFLAGS) -o $(@) $(?) $(LIBTHRD)

test-c.o: test.c
	$(CC) $(CFLAGS) -c $(?) -o $(@)

clean:
	rm -rf *.o test-*

cleano:
	rm -rf *.o

# vim: set ts=8 ai:
