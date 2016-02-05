//
//  UIColor+STCreation.h
//  Together
//
//  Created by TangJR on 1/27/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (STCreation)

+ (instancetype)st_hexColor:(NSInteger)hex;
+ (instancetype)st_hexColor:(NSInteger)hex alpha:(float)alpha;
+ (instancetype)st_red:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(float)alpha;

@end