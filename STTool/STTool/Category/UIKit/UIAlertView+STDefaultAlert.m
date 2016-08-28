//
//  UIAlertView+STDefaultAlert.m
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UIAlertView+STDefaultAlert.h"

@implementation UIAlertView (STDefaultAlert)

+ (instancetype)st_showDefaultAlertViewWithMessage:(NSString *)message {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:message delegate:nil cancelButtonTitle:@"确认" otherButtonTitles:nil];
    [alertView show];
    return alertView;
}

@end