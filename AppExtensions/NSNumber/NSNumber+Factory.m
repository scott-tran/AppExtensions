//
//  Created by stran on 2/23/12.
//
//


#import "NSNumber+Factory.h"


@implementation NSNumber (Factory)

+ (NSNumber *)numberWithString:(NSString *)string {
    static NSNumberFormatter *formatter = nil;
    if (!formatter) {
        formatter = [[NSNumberFormatter alloc] init];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
    }

    return [formatter numberFromString:string];
}

@end