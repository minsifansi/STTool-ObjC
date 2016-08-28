//
//  UIView+STOperation.h
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (STOperation)

- (void)st_removeAllSubviews;
- (UIViewController *)st_currentViewController;
- (UIImage *)st_screenShot;
- (void)st_addSeparatorLineWithFrame:(CGRect)frame color:(UIColor *)color;
- (BOOL)st_isContainPoint:(CGPoint)point;

@end