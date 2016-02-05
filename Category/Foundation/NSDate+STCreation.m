//
//  NSDate+STCreation.m
//  Together
//
//  Created by TangJR on 2/5/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "NSDate+STCreation.h"
#import "STTool+Verify.h"

@implementation NSDate (STCreation)

+ (instancetype)st_stringToDate:(NSString *)string separator:(NSString *)separator {
    if ([STTool st_isNil:string]) {
        return nil;
    }
    NSArray *formatArray = @[@"yyyy", @"MM", @"dd"];
    NSString *format = [formatArray componentsJoinedByString:separator];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    return [dateFormat dateFromString:string];
}

+ (instancetype)st_stringToDateTime:(NSString *)string separator:(NSString *)separator {
    if ([STTool st_isNil:string]) {
        return nil;
    }
    NSArray *formatArray = @[@"yyyy", @"MM", @"dd"];
    NSString *format = [[formatArray componentsJoinedByString:separator] stringByAppendingString:@" HH:mm"];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    return [dateFormat dateFromString:string];
}

@end