//
//  Created by stran on 6/7/12.
//
//


#import "NSArray+Util.h"


@implementation NSArray (Util)

- (NSArray *)shuffle {
    NSMutableArray *temp = [[NSMutableArray alloc] initWithArray:self];

    for (NSUInteger i = [self count]; i > 1; i--) {
        NSUInteger j = arc4random_uniform(i);
        [temp exchangeObjectAtIndex:i - 1 withObjectAtIndex:j];
    }

    NSArray *result = [NSArray arrayWithArray:temp];
    [temp release];]
    return result;
}

@end