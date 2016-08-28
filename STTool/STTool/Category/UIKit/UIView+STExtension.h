//
//  UIView+STExtension.h
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (STExtension)

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat maxX;
@property (nonatomic, assign) CGFloat maxY;
@property (nonatomic, assign) CGFloat halfWidth;
@property (nonatomic, assign) CGFloat halfHeight;

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)st_isShowingOnKeyWindow;

- (void)st_appearenceWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
- (void)st_appearenceWithBorderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
- (void)st_appearenceWithCornerRadius:(CGFloat)cornerRadius;

@end
