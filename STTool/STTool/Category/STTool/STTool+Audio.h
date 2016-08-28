//
//  STTool+AudioPermission.h
//  Fan
//
//  Created by TangJR on 3/23/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool.h"

@interface STTool (Audio)

+ (BOOL)st_hasHeadset;
+ (float)st_currentVolume;

@end