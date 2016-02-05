//
//  NSString+STOperation.m
//  Together
//
//  Created by TangJR on 11/9/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "NSString+STOperation.h"

@implementation NSString (STOperation)

- (CGSize)st_sizeWithMaxSize:(CGSize)maxSize font:(UIFont *)font {
    
    CGRect rect = CGRectZero;
    
    @autoreleasepool {
        // 根据文字内容，自适应label大小
        UILabel *labelRight = [[UILabel alloc] init];
        labelRight.text = self;
        labelRight.font = font;
        // 计算文本占用大小（设置最大宽为150：即150就换行，最大高为300：即300就开始用...代替）
        CGSize constraintSize = maxSize;
        NSStringDrawingOptions options = NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
        // 文本属性（根据字号计算需要的空间大小）
        NSDictionary *attributes = @{NSFontAttributeName: font};
        // IOS7的方法  是NSString的方法
        rect = [labelRight.text boundingRectWithSize:constraintSize options:options attributes:attributes context:nil];
        // 配置最大显示行数 0为不限制行数
        labelRight.numberOfLines = 0;
        // 配置换行
        labelRight.lineBreakMode = NSLineBreakByWordWrapping;
    }
    
    return rect.size;
}

@end