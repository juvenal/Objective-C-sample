/**
 *
 *
 *
 *
 */

#import <stdio.h>
#import <stdlib.h>

#ifdef __darwin__
    #import <Foundation/Foundation.h>
    #define BASECLASS NSObject
#else
    #import <objc/Object.h>
    #define BASECLASS Object
#endif

@interface MyClass: BASECLASS {
		int lines;
	}
	-(void) setTimes: (int)times;
	-(void) displayMsg: (char *)message;
	-(void) displayMsg: (char *)message
                     times: (int)times;
@end

/* vim: set ts=4 ai: */
