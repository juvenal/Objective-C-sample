#import "myclass.h"

int main(int argc, char *argv[]) {
	// MyClass *message = [MyClass new];       // C++ class init format
	MyClass *myclass = [[MyClass alloc] init]; // Objective-C class init format
	[myclass setTimes:10];
	[myclass displayMsg:"Eita mundo! Oia nois aqui"];
	return 0;
}
