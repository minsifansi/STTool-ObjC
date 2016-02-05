//
//  UITextField+STCreation.m
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UITextField+STCreation.h"

@implementation UITextField (STCreation)

- (void)st_leftView {
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 7, CGRectGetHeight(self.bounds))];
    self.leftView = view;
    self.leftViewMode = UITextFieldViewModeAlways;
}

@end