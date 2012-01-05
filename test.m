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
	MyClass *myclass = [[MyClass alloc] init]; // Objective-C class init format
	MyClass *myclass2 = [MyClass new];         // C++ class init format (alloc and init together)
	[myclass setTimes:10];
	[myclass displayMsg:"Eita mundo! Oia nois aqui"];
	[myclass2 displayMsg:"Hello world! Here we are" times: 8];
	return 0;
}

/* vim: set ts=4 ai: */
