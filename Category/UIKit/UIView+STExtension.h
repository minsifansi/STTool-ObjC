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

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)st_isShowingOnKeyWindow;

//- (CGFloat)x;
//- (void)setX:(CGFloat)x;
/** 在分类中声明@property, 只会生成方法的声明, 不会生成方法的实现和带有_下划线的成员变量*/

+ (instancetype)st_viewFromXib;

- (void)st_appearenceWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
- (void)st_appearenceWithBorderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
- (void)st_appearenceWithCornerRadius:(CGFloat)cornerRadius;

@end
