//
//  Created by stran on 2/22/12.
//
//


#import "UIView+Position.h"


@implementation UIView (Position)

- (float)x {
    return self.frame.origin.x;
}

- (void)setX:(float)newX {
    CGRect frame = self.frame;
    frame.origin.x = newX;
    self.frame = frame;
}

- (float)y {
    return self.frame.origin.y;
}

- (void)setY:(float)newY {
    CGRect frame = self.frame;
    frame.origin.y = newY;
    self.frame = frame;
}

- (float)width {
    return self.frame.size.width;
}

- (void)setWidth:(float)newWidth {
    CGRect frame = self.frame;
    frame.size.width = newWidth;
    self.frame = frame;
}

- (float)height {
    return self.frame.size.height;
}

- (void)setHeight:(float)newHeight {
    CGRect frame = self.frame;
    frame.size.height = newHeight;
    self.frame = frame;
}

- (float)maxX {
    return CGRectGetMaxX(self.frame);
}

- (float)maxY {
    return CGRectGetMaxY(self.frame);
}

- (float)midX {
    return CGRectGetMidX(self.frame);
}

- (float)midY {
    return CGRectGetMidY(self.frame);
}

- (float)minX {
    return CGRectGetMinX(self.frame);
}

- (float)minY {
    return CGRectGetMinY(self.frame);
}

@end