//
//  Created by stran on 2/22/12.
//
//

#import <objc/runtime.h>
#import "UIControl+Blocks.h"

static char UIControlBlockKey;

@implementation UIControl (Blocks)

- (void)callAEBlock:(id)sender {
    AEBlock1 block = (AEBlock1)objc_getAssociatedObject(self, &UIControlBlockKey);
    if (block) {
        block(sender);
    }
}

- (void)onTouch:(AEBlock1)block {
    [self onEvent:UIControlEventTouchUpInside withBlock:block];
}

- (void)onEvent:(UIControlEvents)event withBlock:(AEBlock1)block {
    objc_setAssociatedObject(self, &UIControlBlockKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(callAEBlock:) forControlEvents:event];
}

@end