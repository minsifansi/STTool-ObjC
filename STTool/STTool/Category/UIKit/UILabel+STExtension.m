//
//  UILabel+STExtension.m
//  LiveCombo
//
//  Created by saitjr on 8/17/16.
//  Copyright © 2016 saitjr. All rights reserved.
//

#import "UILabel+STExtension.h"

@implementation UILabel (STExtension)

- (CGSize)st_sizeWithMaxsize:(CGSize)size {
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    CGSize result = [self.text boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return result;
}

- (CGSize)st_size {
    return [self st_sizeWithMaxsize:[UIScreen mainScreen].bounds.size];
}

@end