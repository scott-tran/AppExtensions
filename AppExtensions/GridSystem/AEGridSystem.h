//
//  Created by stran on 2/25/12.
//
//

/* Point. */

struct AEPoint {
    int column;
    int row;
};
typedef struct AEPoint AEPoint;

/* Size */

struct AESize {
    int columnLength;
    int rowLength;
};
typedef struct AESize AESize;

/* Cell */

struct AECell {
    AEPoint origin;
    AESize size;
};
typedef struct AECell AECell;

/* Make a point from `(column, row)'. */

CG_INLINE AEPoint AEPointMake(int column, int row);

/* Make a size from `(cellWidth, cellHeight)'. */

CG_INLINE AESize AESizeMake(int columns, int rows);

/* Make a rect from `(x, y; width, height)'. */

CG_INLINE AECell AECellMake(int column, int row, int cellWidth, int cellHeight);

/*** Definitions of inline functions. ***/

CG_INLINE AEPoint AEPointMake(int column, int row) {
    AEPoint point; point.column = column; point.row = row; return point;
}

CG_INLINE AESize AESizeMake(int columnLength, int rowLength) {
    AESize size; size.columnLength = columnLength; size.rowLength = rowLength; return size;
}

CG_INLINE AECell AECellMake(int column, int row, int columnLength, int rowLength) {
    AECell cell;
    cell.origin.column = column; cell.origin.row = row;
    cell.size.columnLength = columnLength; cell.size.rowLength = rowLength;
    return cell;
}