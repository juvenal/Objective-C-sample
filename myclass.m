/**
 *
 *
 *
 *
 *
 */

#import "myclass.h"

@implementation MyClass
	/**
	 *
	 *
	 */
	-(void) setTimes: (int)times {
		lines = times;
	}

	/**
	 *
	 *
	 */
	-(void) displayMsg: (char *)message {
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

	/**
	 *
	 *
	 */
	-(void) displayMsg: (char *)message
                 times: (int)times {

		int i = 0;

		for (i = 0; i < times; i++) {
			if (i > 0) {
				printf("%s %d times!\n", message, i + 1);
			}
			else {
				printf("%s %d time!\n", message, i + 1);
			}
		}
	}
@end

/* vim: set ts=4 ai: */
