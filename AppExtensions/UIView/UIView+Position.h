//
//  Created by stran on 2/22/12.
//
//


#import <UIKit/UIKit.h>

@interface UIView (Position)

@property float x;
@property float y;
@property float width;
@property float height;
@property CGPoint origin;
@property CGSize size;
@property(readonly) float maxX;
@property(readonly) float maxY;
@property(readonly) float midX;
@property(readonly) float midY;
@property(readonly) float minX;
@property(readonly) float minY;


@end