//
//  STTool+Verity.m
//  Together
//
//  Created by TangJR on 1/27/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool+FormatVerify.h"
#import "STTool+Verify.h"

@implementation STTool (FormatVerify)

+ (BOOL)st_isMobilePhone:(NSString *)mobilePhone {
    if ([self st_isNil:mobilePhone]) {
        return NO;
    }
    NSString * regexString = @"^[1][34578]\\d{9}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES%@", regexString];
    
    return [predicate evaluateWithObject:mobilePhone];
}

+ (BOOL)st_isEmail:(NSString *)email {
    if ([self st_isNil:email]) {
        return NO;
    }
    NSString *regexString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexString];
    return [predicate evaluateWithObject:email];
}

+ (BOOL)st_isCharacter:(NSString *)characters {
    if ([self st_isNil:characters]) {
        return NO;
    }
    NSString *regexString = @"^[A-Za-z]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexString];
    return [predicate evaluateWithObject:characters];
}

+ (BOOL)st_isNumber:(NSString *)numbers {
    if ([self st_isNil:numbers]) {
        return NO;
    }
    NSString *regexString = @"^-?\\d+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES%@", regexString];
    return [predicate evaluateWithObject:numbers];
}

+ (BOOL)st_isPhone:(NSString *)phoneNumber {
    if ([self st_isNil:phoneNumber]) {
        return NO;
    }
    NSString * MOBILE = @"^[1][34578]\\d{9}$";
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    NSString * PHS = @"^(0[0-9]{2,3}\\-)?([2-9][0-9]{6,7})+(\\-[0-9]{1,4})?$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];//China Mobile
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];//China Unicom
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];//China Telecom
    NSPredicate *regextestphs = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", PHS];//PHS
    
    if (([regextestmobile evaluateWithObject:phoneNumber] == YES)
        || ([regextestcm evaluateWithObject:phoneNumber] == YES)
        || ([regextestct evaluateWithObject:phoneNumber] == YES)
        || ([regextestcu evaluateWithObject:phoneNumber] == YES)
        || ([regextestphs evaluateWithObject:phoneNumber] == YES)) {
        return YES;
    }
    return NO;
}

+ (BOOL)st_isIncludeSpecialChar:(NSString *)string {
    if ([STTool st_isNil:string]) {
        return NO;
    }
    NSString *regexString = @"^[A-Za-z0-9\u4E00-\u9FA5_-]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",regexString];
    return ![predicate evaluateWithObject:string];
}

+ (BOOL)st_isIdCard:(NSString *)idCard {
    if ([STTool st_isNil:idCard]) {
        return NO;
    }
    NSString * regexString = @"(^\\d{15}$)|(^\\d{17}([0-9]|X)$)";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES%@", regexString];
    return [predicate evaluateWithObject:idCard];
}

+ (BOOL)st_isIncludeChineseChar:(NSString *)string {
    if ([STTool st_isNil:string]) {
        return NO;
    }
    NSInteger count = 0;
    for (int i = 0; i < string.length; i++) {
        unichar ch = [string characterAtIndex:i];
        if (0x4e00 < ch  && ch < 0x9fff) {
            count++;
        }
    }
    return count;
}

@end