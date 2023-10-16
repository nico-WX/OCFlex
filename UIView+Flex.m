//
//  UIView+Flex.m
//  Yoga
//
//  Created by pwx on 2023/7/13.
//

#import "UIView+Flex.h"
#import <objc/runtime.h>

@implementation UIView (Flex)
static NSString *_FlexKey = @"_FlexKey";

- (Flex *)box {
    Flex *obj = objc_getAssociatedObject(self, &_FlexKey);
    if (obj == nil) {
        obj = [[Flex alloc] init:self];
        objc_setAssociatedObject(self, &_FlexKey, obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return obj;
}

- (void)layoutWithBlock:(YGLayoutConfigurationBlock)block {
    if (block != nil) {
        self.yoga.isEnabled = true;
        block(self.yoga);
    }
}


@end
