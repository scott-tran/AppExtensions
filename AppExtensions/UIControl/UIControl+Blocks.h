//
//  Created by stran on 2/22/12.
//
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AETypes.h"

@interface UIControl (Blocks)

- (void)onTouch:(AEBlock1)block;
- (void)onEvent:(UIControlEvents)event withBlock:(AEBlock1)block;

@end