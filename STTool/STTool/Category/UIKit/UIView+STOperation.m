//
//  UIView+STOperation.m
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UIView+STOperation.h"

@implementation UIView (STOperation)

- (void)st_removeAllSubviews {
    
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (UIViewController *)st_currentViewController {
    
    UIView *tempView = self;
    
    if ([[tempView nextResponder]isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)[tempView nextResponder];
    }
    else{
        
        for (UIView * superview = tempView.superview; superview; superview = superview.superview) {
            if ([[superview nextResponder] isKindOfClass:[UIViewController class]]) {
                return (UIViewController *)[superview nextResponder];
            }
        }
    }
    return nil;
}

- (UIImage *)st_screenShot {
    
    UIGraphicsBeginImageContext(self.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}

- (void)st_addSeparatorLineWithFrame:(CGRect)frame color:(UIColor *)color {
    
    UILabel *separatorLine = [[UILabel alloc] initWithFrame:frame];
    separatorLine.backgroundColor = color;
    [self addSubview:separatorLine];
}

- (BOOL)st_isContainPoint:(CGPoint)point {
    
    return CGRectContainsPoint(self.frame, point);
}

@end