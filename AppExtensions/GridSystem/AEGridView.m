//
//  Created by stran on 2/25/12.
//
//

#import "AEGridView.h"

@implementation AEGridView

@synthesize gridEngine;

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 1.0);

    int columns = gridEngine.cellSize.columnLength;
    int rows = gridEngine.cellSize.rowLength;

    for (int columnIndex = 0; columnIndex < columns; columnIndex++) {
        for(int rowIndex = 0; rowIndex < rows; rowIndex++) {
            CGRect cell = [gridEngine rectAtCell:AECellMake(columnIndex, rowIndex, 1, 1)];
            CGContextStrokeRect(context, cell);
        }
    }
}

- (void)dealloc {
    [gridEngine release];
    [super dealloc];
}

@end
