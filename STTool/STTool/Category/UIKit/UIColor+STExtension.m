//
//  UIColor+STExtension.m
//  BLEShoes
//
//  Created by TangJR on 4/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "UIColor+STExtension.h"

@implementation UIColor (STExtension)

- (NSString *)st_toHexString {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    
    return [NSString stringWithFormat:@"%02lX%02lX%02lX",
            lroundf(r * 255),
            lroundf(g * 255),
            lroundf(b * 255)];
}

- (CGFloat)st_red {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    return components[0];
}

- (CGFloat)st_green {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    return components[1];
}

- (CGFloat)st_blue {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    return components[2];
}

- (CGFloat)st_alpha {
    return CGColorGetAlpha(self.CGColor);
}

@end