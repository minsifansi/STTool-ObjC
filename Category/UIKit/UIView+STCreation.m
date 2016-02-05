//
//  UIView+STCreation.m
//  Together
//
//  Created by TangJR on 11/6/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UIView+STCreation.h"

@implementation UIView (STCreation)

+ (instancetype)st_viewFromXib {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

+ (instancetype)st_tableHeaderView {
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 10)];
    headerView.backgroundColor = BG_COLOR;
    return headerView;
}

@end