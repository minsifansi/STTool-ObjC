//
//  UIImage+STCreation.h
//  Together
//
//  Created by TangJR on 11/11/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, STImageCropSavePart) {
    STImageCropSavePartCenter,
    STImageCropSavePartLeftTop,
    STImageCropSavePartRightTop,
    STImageCropSavePartLeftBottom,
    STImageCropSavePartRightBottom
};

@interface UIImage (STCreation)

+ (instancetype)st_imageWithName:(NSString *)imageName;
+ (instancetype)st_imageWithColor:(UIColor *)color;
+ (instancetype)st_imageWithColor:(UIColor *)color size:(CGSize)size;

// 直接根据新尺寸缩小
- (instancetype)st_resizeImageNewSize:(CGSize)newSize;
// 按照给定最大尺寸，等比例进行缩小
- (instancetype)st_resizeImageWithMaxSize:(CGSize)maxSize;

//// 直接根据大小进行裁剪
//- (instancetype)st_cropImageWithFrame:(CGRect)frame;
//// 根据给定的最大尺寸进行裁剪
//- (instancetype)st_resizeWithMaxSize:(CGSize)maxSize savePart:(STImageCropSavePart)savePart;

@end