//
//  Created by stran on 2/24/12.
//
//


#import "NSArray+Functional.h"


@implementation NSArray (Functional)

- (void)foreach:(AEBlock1)block {
    [self enumerateObjectsUsingBlock:^(id value, NSUInteger index, BOOL *stop) {
        block(value);
    }];
}

- (id)fold:(id)initial with:(AEReturnBlock2)block {
    __block id result = initial;

    [self enumerateObjectsUsingBlock:^(id value, NSUInteger index, BOOL *stop) {
        result = block(result, value);
    }];

    return result;
}

- (id)reduce:(AEReturnBlock2)block {
    __block id result = nil;

    [self enumerateObjectsUsingBlock:^(id value, NSUInteger index, BOOL *stop) {
        if (index == 0) {
            result = value;
        } else {
            result = block(result, value);
        }
    }];

    return result;
}

- (NSArray *)map:(AEReturnBlock1)block {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    
    [self enumerateObjectsUsingBlock:^(id value, NSUInteger index, BOOL *stop) {
        id computed = block(value);
        if (!computed) {
            computed = [NSNull null];
        }
        
        [result addObject:computed];
    }];
    
    return result;
}

@end