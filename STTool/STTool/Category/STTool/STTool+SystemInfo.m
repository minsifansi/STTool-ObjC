//
//  STTool+SystemInfo.m
//  Together
//
//  Created by TangJR on 2/4/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool+SystemInfo.h"

@implementation STTool (SystemInfo)

+ (NSString *)st_bundleId {
    NSDictionary * infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *identifier = [infoDictionary objectForKey:@"CFBundleIdentifier"];
    return identifier;
}

+ (NSString *)st_build {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: (NSString *)kCFBundleVersionKey];
}

+ (NSString *)st_version {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
}

+ (STSystemLanguage)st_language {
    NSArray *languages = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    NSString* preferredLang = [languages firstObject];
    if ([preferredLang isEqualToString:@"en"]) {
        return STSystemLanguageEn;
    }
    if ([preferredLang isEqualToString:@"zh-Hans-CN"]) {
        return STSystemLanguageHans;
    }
    if ([preferredLang isEqualToString:@"zh-Hant"]) {
        return STSystemLanguageHant;
    }
    if ([preferredLang isEqualToString:@"ja"]) {
        return STSystemLanguageJa;
    }
    return STSystemLanguageOthers;
}

@end