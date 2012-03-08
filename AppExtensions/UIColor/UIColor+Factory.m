//
//  Created by stran on 3/6/12.
//
//


#import "UIColor+Factory.h"


@implementation UIColor (Factory)

- (UIColor *)initWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#"
                           withString:@"0x"];
    uint hexValue;
    if ([[NSScanner scannerWithString:hexString] scanHexInt:&hexValue]) {
        return [self initWithRed:((float) ((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float) ((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float) (hexValue & 0xFF)) / 255.0 alpha:alpha];
    } else {
        // invalid hex string
        return [self initWithWhite:0 alpha:alpha];
    }
}

+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    return [[[UIColor alloc] initWithHexString:hexString alpha:alpha] autorelease];
}

+ (UIColor *) randomColor{
	CGFloat red =  (CGFloat)random()/(CGFloat)RAND_MAX;
	CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
	CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
	return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end