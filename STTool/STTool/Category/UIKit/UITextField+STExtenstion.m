//
//  UITextField+STExtenstion.m
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UITextField+STExtenstion.h"

@implementation UITextField (STExtenstion)

- (void)st_leftView {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 7, CGRectGetHeight(self.bounds))];
    self.leftView = view;
    self.leftViewMode = UITextFieldViewModeAlways;
}

- (void)st_placeHolderColor:(UIColor *)color {
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName: color}];
}

@end