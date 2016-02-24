//
//  STTool+SystemInfo.h
//  Together
//
//  Created by TangJR on 2/4/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool.h"

@interface STTool (SystemInfo)

+ (NSString *)st_bundleId;
+ (NSString *)st_bundleVersion;
+ (NSString *)st_version;
+ (NSString *)st_appName;

@end