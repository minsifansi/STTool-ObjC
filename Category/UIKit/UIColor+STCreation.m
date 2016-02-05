//
//  UIColor+STCreation.m
//  Together
//
//  Created by TangJR on 1/27/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "UIColor+STCreation.h"

@implementation UIColor (STCreation)

+ (instancetype)st_hexColor:(NSInteger)hex {
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1];
}

+ (instancetype)st_hexColor:(NSInteger)hex alpha:(float)alpha {
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}

+ (instancetype)st_red:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(float)alpha {
    return [UIColor colorWithRed:((red) / 255.0) green:((green) / 255.0) blue:((blue) / 255.0) alpha:(alpha)];
}

@end