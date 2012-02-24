//
//  Created by stran on 2/24/12.
//
//


#import <Foundation/Foundation.h>

@interface NSArray (Functional)

- (void)foreach:(AEBlock1)block;
- (id)fold:(id)initial with:(AEReturnBlock2)block;
- (id)reduce:(AEReturnBlock2)block;
- (NSArray *)map:(AEReturnBlock1)block;


@end