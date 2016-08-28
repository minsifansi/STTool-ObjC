//
//  STTool+AudioPermission.m
//  Fan
//
//  Created by TangJR on 3/23/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool+Audio.h"
#import <AVFoundation/AVFoundation.h>

@implementation STTool (AudioPermission)

+ (BOOL)st_hasHeadset {
#if TARGET_IPHONE_SIMULATOR
    return NO;
#else
    AVAudioSessionRouteDescription* route = [[AVAudioSession sharedInstance] currentRoute];
    for (AVAudioSessionPortDescription* desc in [route outputs]) {
        if ([[desc portType] isEqualToString:AVAudioSessionPortHeadphones])
            return YES;
    }
    return NO;
#endif
}

+ (float)st_currentVolume {
    return [[AVAudioSession sharedInstance] outputVolume];
}

@end