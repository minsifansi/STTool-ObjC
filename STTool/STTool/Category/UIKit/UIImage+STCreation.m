//
//  UIImage+STCreation.m
//  Together
//
//  Created by TangJR on 11/11/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "UIImage+STCreation.h"

@implementation UIImage (STCreation)

+ (instancetype)st_imageWithName:(NSString *)imageName {
    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForAuxiliaryExecutable:imageName]];
    return image;
}

+ (instancetype)st_imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    // 开启位图上下文
    UIGraphicsBeginImageContext(rect.size);
    // 获取位图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 使用color演示填充上下文
    CGContextSetFillColorWithColor(context, [color CGColor]);
    // 渲染上下文
    CGContextFillRect(context, rect);
    // 从上下文中获取图片
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    // 结束上下文
    UIGraphicsEndImageContext();
    
    return theImage;
}

+ (instancetype)st_imageWithColor:(UIColor *)color {
    CGSize size = CGSizeMake(1.0f, 1.0f);
    return [self st_imageWithColor:color size:size];
}

- (instancetype)st_resizeImageNewSize:(CGSize)newSize {
    if (newSize.width > self.size.width && newSize.height > self.size.height) {
        return self;
    }
    UIGraphicsBeginImageContext(newSize);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

- (instancetype)st_resizeImageWithMaxSize:(CGSize)maxSize {
    CGFloat imageWidth = self.size.width;
    CGFloat imageHeight = self.size.height;
    CGFloat factor = imageWidth / imageHeight;
    
    CGSize newSize = maxSize;
    if (maxSize.width / maxSize.height > factor) {
        newSize.width = maxSize.width * factor;
    } else {
        newSize.height = maxSize.height * factor;
    }
    return [self st_resizeImageNewSize:newSize];
}

//- (instancetype)st_cropImageWithFrame:(CGRect)frame {
//    
//    if (newSize.width > self.size.width && newSize.height > self.size.height) {
//        return self;
//    }
//    
//    return self;
//}
//
//- (instancetype)st_cropImageWithMaxSize:(CGSize)maxSize cropType:(STImageCropType)cropType {
//    CGFloat imageWidth = self.size.width;
//    CGFloat imageHeight = self.size.height;
//    CGFloat factor = imageWidth / imageHeight;
//    
//    CGSize newSize = maxSize;
//    if (maxSize.width / maxSize.height > factor) {
//        newSize.width = maxSize.width * factor;
//    } else {
//        newSize.height = maxSize.height * factor;
//    }
//    return [self st_cropImageWithNewSize:newSize cropType:cropType];
//}

@end