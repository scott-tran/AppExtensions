//
//  Created by stran on 3/6/12.
//
//


#import <Foundation/Foundation.h>

@interface UIColor (Factory)
- (UIColor *)initWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end