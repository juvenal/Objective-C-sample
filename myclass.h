/**
 *
 *
 *
 *
 */

#ifdef __darwin__
#import <Foundation/Foundation.h>

@interface MyClass: NSObject {
		int lines;
	}
	-(void) setTimes:(int)times;
	-(void) displayMsg:(char *)message;
@end

#else
#import <objc/Object.h>

@interface MyClass: Object {
		int lines;
	}
	-(void) setTimes: (int)times;
	-(void) displayMsg: (char *)message;
@end

#endif
