//
//  UIViewController+STCreation.m
//  Car
//
//  Created by TangJR on 11/23/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UIViewController+STCreation.h"

@implementation UIViewController (STCreation)

+ (instancetype)st_viewControllerFromMainSB {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

@end