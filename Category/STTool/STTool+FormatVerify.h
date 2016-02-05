//
//  STTool+Verity.h
//  Together
//
//  Created by TangJR on 1/27/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool.h"

@interface STTool (FormatVerify)

// 基本格式验证
+ (BOOL)st_isMobilePhone:(NSString *)mobilePhone;
+ (BOOL)st_isEmail:(NSString *)email;
+ (BOOL)st_isCharacter:(NSString *)characters;
+ (BOOL)st_isNumber:(NSString *)numbers;
+ (BOOL)st_isPhone:(NSString *)phoneNumber;
+ (BOOL)st_isIncludeSpecialChar:(NSString *)string;
+ (BOOL)st_isIdCard:(NSString *)idCard;
+ (BOOL)st_isIncludeChineseChar:(NSString *)string;

@end