//
//  Created by stran on 3/20/12.
//
//


#import "NSJSONSerialization+Factory.h"


@implementation NSJSONSerialization (Factory)

+ (NSArray *)arrayWithData:(NSData *)data {
    NSError *error;
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (array) {
        return array;
    } else {
        NSLog(@"error creating array: %@", error);

        return nil;
    }
}

+ (NSDictionary *)dictionaryWithData:(NSData *)data {
    NSError *error;
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (dictionary) {
        return dictionary;
    } else {
        NSLog(@"error creating dictionary: %@", [error localizedDescription]);

        return nil;
    }
}

@end