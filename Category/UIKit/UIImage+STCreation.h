//
//  UIImage+STCreation.h
//  Together
//
//  Created by TangJR on 11/11/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (STCreation)

+ (instancetype)st_imageWithName:(NSString *)imageName;
+ (instancetype)st_imageWithColor:(UIColor *)color;

@end