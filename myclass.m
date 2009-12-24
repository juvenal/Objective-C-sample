/**
 *
 *
 *
 *
 *
 */

#import "myclass.h"

@implementation MyClass
    -(void) displayMsg:(char *)message lines:(int)qtd {
        int i = 0;

        for (i = 0; i < qtd; i++) {
            if (i > 0) {
                printf("%s %d times!\n", message, i+1);
            }
            else {
                printf("%s %d time!\n", message, i+1);
            }
        }
   
   }
@end
