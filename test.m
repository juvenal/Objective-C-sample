/**
 *
 *
 *
 *
 *
 *
 *
 */

#import "myclass.h"

int main(int argc, char *argv[]) {
	// MyClass *myclass = [MyClass new];       // C++ class init format
	MyClass *myclass = [[MyClass alloc] init]; // Objective-C class init format
	[myclass setTimes:10];
	[myclass displayMsg:"Eita mundo! Oia nois aqui"];
	[myclass displayMsg:"Hello world! Here we are" times: 8];
	return 0;
}

/* vim: set ts=4 ai: */
