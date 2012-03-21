//
//  Created by stran on 3/20/12.
//
//


#import <Foundation/Foundation.h>

@interface NSJSONSerialization (Factory)

+ (NSArray *)arrayWithData:(NSData *)data;

+ (NSDictionary *)dictionaryWithData:(NSData *)data;


@end