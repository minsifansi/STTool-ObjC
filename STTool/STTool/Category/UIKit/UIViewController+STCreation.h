//
//  UIViewController+STCreation.h
//  Car
//
//  Created by TangJR on 11/23/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (STCreation)

+ (instancetype)st_viewControllerFromMainSB;
+ (instancetype)st_viewControllerWithSBName:(NSString *)sbName;

+ (instancetype)st_viewControllerWithIdentifier:(NSString *)identifier sbName:(NSString *)sbName;

@end