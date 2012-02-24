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
    __block id result = [initial retain];

    [self enumerateObjectsUsingBlock:^(id value, NSUInteger index, BOOL *stop) {
        id computed = block(result, value);
        [result release];
        result = [computed retain];
    }];

    return [result autorelease];
}

- (id)reduce:(AEReturnBlock2)block {
    __block id result = nil;

    [self enumerateObjectsUsingBlock:^(id value, NSUInteger index, BOOL *stop) {
        if (index == 0) {
            result = value;
        } else {
            id computed = block(result, value);
            [result release];
            result = [computed retain];
        }
    }];

    return [result autorelease];
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