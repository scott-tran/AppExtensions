//
//  Created by stran on 3/20/12.
//
//


#import "NSJSONSerialization+Factory.h"


@implementation NSJSONSerialization (Factory)

+ (NSArray *)arrayWithString:(NSString *)json {
    return [NSJSONSerialization arrayWithData:[json dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSArray *)arrayWithData:(NSData *)data {
    NSError *error;
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (array) {
        return array;
    } else {
        NSLog(@"error creating array: %@", error);

        return nil;
    }
}

+ (NSString *)jsonWithArray:(NSArray *)array {
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:0 error:&error];
    if (jsonData) {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    } else {
        NSLog(@"error creating json: %@", [error localizedDescription]);

        return nil;
    }
}

+ (NSDictionary *)dictionaryWithString:(NSString *)json {
    return [NSJSONSerialization dictionaryWithData:[json dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSDictionary *)dictionaryWithData:(NSData *)data {
    NSError *error;
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (dictionary) {
        return dictionary;
    } else {
        NSLog(@"error creating dictionary: %@", [error localizedDescription]);

        return nil;
    }
}

+ (NSString *)jsonWithDictionary:(NSDictionary *)dictionary {
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:0 error:&error];
    if (jsonData) {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    } else {
        NSLog(@"error creating json: %@", [error localizedDescription]);

        return nil;
    }
}
@end