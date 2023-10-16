//
//  UIView+Flex.h
//  Yoga
//
//  Created by pwx on 2023/7/13.
//

#import <UIKit/UIKit.h>
#import "Flex.h"
#import "UIView+Yoga.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Flex)
@property(nonatomic,strong, readonly)Flex *box;

/// 默认启用布局
- (void)layoutWithBlock:(YGLayoutConfigurationBlock)block;
@end

NS_ASSUME_NONNULL_END
