//
//  NSString+STExtension.m
//  Together
//
//  Created by TangJR on 11/5/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "NSString+STExtension.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (STExtension)

- (instancetype)st_MD5 {
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (CGSize)st_sizeWithMaxsize:(CGSize)size font:(UIFont *)font {
    NSDictionary *attribute = @{NSFontAttributeName: font};
    CGSize result = [self boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return result;
}

- (CGSize)st_sizeWithFont:(UIFont *)font {
    return [self st_sizeWithMaxsize:[UIScreen mainScreen].bounds.size font:font];
}

@end