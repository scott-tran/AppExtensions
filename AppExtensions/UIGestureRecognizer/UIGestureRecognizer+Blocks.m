//
//  Created by stran on 4/12/12.
//
//


#import <objc/runtime.h>
#import "UIGestureRecognizer+Blocks.h"

static char UIGestureRecognizerBlockKey;

@implementation UIGestureRecognizer (Blocks)

- (void)callAEBlock:(id)sender {
    AEBlock1 block = (AEBlock1)objc_getAssociatedObject(self, &UIGestureRecognizerBlockKey);
    if (block) {
        block(sender);
    }
}

- (id)initWithBlock:(AEBlock1)block {
    self = [self initWithTarget:self action:@selector(callAEBlock:)];
    if (self) {
        objc_setAssociatedObject(self, &UIGestureRecognizerBlockKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }

    return self;
}

+ (id)recognizerWithBlock:(AEBlock1)block {
    return [[[self class] alloc] initWithBlock:block];
}

@end