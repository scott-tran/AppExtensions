//
//  Created by stran on 2/24/12.
//
//


#import <Foundation/Foundation.h>

@interface NSNumberFormatter (Style)

+ (NSString *)simple:(NSNumber *)number;
+ (NSString *)currency:(NSNumber *)number;
+ (NSString *)simpleCurrency:(NSNumber *)number;


@end