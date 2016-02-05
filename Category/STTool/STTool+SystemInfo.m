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

+ (NSString *)st_bundleVersion {
    return [NSString stringWithFormat:@"%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
}

@end