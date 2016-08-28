//
//  STTool+SystemInfo.h
//  Together
//
//  Created by TangJR on 2/4/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool.h"

typedef NS_ENUM(NSInteger, STSystemLanguage) {
    STSystemLanguageEn, // 英文
    STSystemLanguageHans, // 简体中文
    STSystemLanguageHant, // 繁体中文
    STSystemLanguageJa, // 日文
    STSystemLanguageOthers
};

@interface STTool (SystemInfo)

+ (NSString *)st_bundleId;
+ (NSString *)st_build;
+ (NSString *)st_version;
+ (STSystemLanguage)st_language;

@end