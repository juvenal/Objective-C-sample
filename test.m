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
	// Two classes to compare initialization methods
	MyClass *myclass = [[MyClass alloc] init]; // Objective-C class init format
	MyClass *myclass2 = [MyClass new];         // C++ class init format (alloc and init together)
	// Auxiliar number object
	NSNumber *timesValue;
	// First method call
	[myclass setTimes: 5];
	[myclass displayMsg: "Eita mundo! Oia nois aqui"];
	// Number object initialized
	timesValue = [NSNumber numberWithInt: 10];
	// Complex message passing example
	[myclass showString: @"Eita mundo! De novo!" times: timesValue];
	// Multiple parameters message passing
	[myclass2 displayMsg: "Hello world! Here we are" times: 15];
	// End of sample code
	return 0;
}

/* vim: set ts=4 ai: */
