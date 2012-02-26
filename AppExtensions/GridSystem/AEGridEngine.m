//
//  Created by stran on 2/25/12.
//
//


#import "AEGridEngine.h"


@interface AEGridEngine ()
- (void)calculateCellDimensions;

@end

@implementation AEGridEngine
@synthesize canvasSize;
@synthesize cellSize;

- (void)calculateCellDimensions {
    cellWidth = canvasSize.width/cellSize.columnLength;
    cellHeight = canvasSize.height/cellSize.rowLength;
}

- (id)initWithCanvasSize:(CGSize)aCanvasSize cellSize:(AESize)aCellSize {
    self = [super init];
    if (self) {
        self.canvasSize = aCanvasSize;
        self.cellSize = aCellSize;

        [self calculateCellDimensions];
    }

    return self;
}


- (CGRect)rectAtCell:(AECell)cell {
//    CGPoint origin = CGPointMake(cellWidth * cell.origin.column, cellHeight * cell.origin.row);
//    CGSize size = CGSizeMake(cellWidth * cell.size.columnLength, cellHeight * cell.size.rowLength);

    return CGRectMake(
            cellWidth * cell.origin.column,
            cellHeight * cell.origin.row,
            cellWidth * cell.size.columnLength,
            cellHeight * cell.size.rowLength
    );
}

@end