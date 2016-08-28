//
//  NSString+STExtension.h
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (STExtension)

- (instancetype)st_MD5;
- (CGSize)st_sizeWithMaxsize:(CGSize)size font:(UIFont *)font;
- (CGSize)st_sizeWithFont:(UIFont *)font;

@end