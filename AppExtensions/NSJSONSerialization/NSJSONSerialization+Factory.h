//
//  Created by stran on 3/20/12.
//
//


#import <Foundation/Foundation.h>

@interface NSJSONSerialization (Factory)

+ (NSArray *)arrayWithString:(NSString *)json;

+ (NSArray *)arrayWithData:(NSData *)data;

+ (NSString *)jsonWithArray:(NSArray *)array;

+ (NSDictionary *)dictionaryWithString:(NSString *)json;

+ (NSDictionary *)dictionaryWithData:(NSData *)data;

+ (NSString *)jsonWithDictionary:(NSDictionary *)dictionary;


@end