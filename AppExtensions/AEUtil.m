//
//  Created by stran on 7/29/12.
//
//

#import "AEUtil.h"

@implementation AEUtil

// http://inessential.com/2012/07/28/emptiness
BOOL AEIsEmpty(id obj) {
	return obj == nil || obj == [NSNull null] || ([obj respondsToSelector:@selector(length)] && [(NSData *)obj length] == 0) || ([obj respondsToSelector:@selector(count)] && [obj count] == 0);
}


BOOL AEStringIsEmpty(NSString *s) {
    /*22 Feb. 2011: added NSNull check. JSON parser can put a null where we expect a string, and NSNull throws an exception when checking length. Since [NSNull null] is, arguably, emptiness, it makes sense to include it.*/
	return s == nil || (id)s == (id)[NSNull null] || [s length] == 0;
}

+ (NSString *)generateUUID {
    CFUUIDRef uuidRef = CFUUIDCreate(NULL);

    NSString *uuid = (__bridge_transfer NSString *)CFUUIDCreateString(NULL, uuidRef);

    return uuid;
}
@end
