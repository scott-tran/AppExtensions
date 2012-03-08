//
//  Created by stran on 3/7/12.
//
//


#import "UIView+Util.h"


@implementation UIView (Util)

- (void)debugBorderWithColor:(UIColor *)color {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 1;
}

- (void)debugBorder {
    [self debugBorderWithColor:[UIColor randomColor]];
}

@end