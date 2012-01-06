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
	NSNumber *timesValue;
	[myclass setTimes: 5];
	[myclass displayMsg: "Eita mundo! Oia nois aqui"];
	timesValue = [NSNumber numberWithInt: 10];
	[myclass showString: @"Eita mundo! De novo!" times: timesValue];
	[myclass2 displayMsg: "Hello world! Here we are" times: 15];
	return 0;
}

/* vim: set ts=4 ai: */
