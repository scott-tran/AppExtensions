//
//  Created by stran on 2/25/12.
//
//


#import <Foundation/Foundation.h>


@interface AEGridEngine : NSObject {

    CGSize canvasSize;
    AESize cellSize;

    CGFloat cellWidth;
    CGFloat cellHeight;

}
- (id)initWithCanvasSize:(CGSize)aCanvasSize cellSize:(AESize)aCellSize;
- (CGRect)rectAtCell:(AECell)cell;


@property(nonatomic) CGSize canvasSize;
@property(nonatomic) AESize cellSize;


@end