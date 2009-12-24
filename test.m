#import "myclass.h"

int main(int argc, char *argv[]) {
	// MyClass *message = [MyClass new];       // C++ class init format
	MyClass *message = [[MyClass alloc] init]; // Objective_C class init format
    [message displayMsg:"Eita mundo! Oia nois aqui" lines:10];
    return 0;
}
