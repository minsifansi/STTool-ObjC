//
//  STTool+Verify.h
//  Together
//
//  Created by TangJR on 2/4/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool.h"

@interface STTool (Verify)

// 对象是否为空
+ (BOOL)st_isNil:(id)object;

// 字符串是否超过多少位
+ (BOOL)st_isString:(NSString *)string minLength:(NSInteger)length;

@end