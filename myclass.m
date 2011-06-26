/**
 *
 *
 *
 *
 *
 */

#include <stdio.h>
#include <stdlib.h>
#import "myclass.h"

@implementation MyClass
	/**
	 *
	 *
	 */
	-(void) setTimes:(int)times {
		lines = times;
	}

	/**
	 *
	 *
	 */
	-(void) displayMsg:(char *)message {
		int i = 0;

		for (i = 0; i < lines; i++) {
			if (i > 0) {
				printf("%s %d times!\n", message, i + 1);
			}
			else {
				printf("%s %d time!\n", message, i + 1);
			}
		}
	}
@end
