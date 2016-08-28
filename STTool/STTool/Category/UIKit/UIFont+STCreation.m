//
//  UIFont+STCreation.m
//  Together
//
//  Created by TangJR on 11/6/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UIFont+STCreation.h"

#define PROPORTION CGRectGetWidth([UIScreen mainScreen].bounds) / 320.0

@implementation UIFont (STCreation)

+ (instancetype)st_autoFontSize:(CGFloat)size {
    
    return [UIFont systemFontOfSize:size * PROPORTION];
}

@end