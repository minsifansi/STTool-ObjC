//
//  NSDate+STExtension.m
//  Car
//
//  Created by TangJR on 12/15/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "NSDate+STExtension.h"

@implementation NSDate (STExtension)

+ (NSString *)st_currentTimeInterval {
    return [[NSDate date] st_toTimeInterval];
}

- (NSString *)st_toDateStringWithSeparator:(NSString *)separator {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    NSArray *formatArray = @[@"yyyy", @"MM", @"dd"];
    NSString *format = [formatArray componentsJoinedByString:separator];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:self];
}

- (NSString *)st_toTimeString {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"HH:mm"];
    return [dateFormat stringFromDate:self];
}

- (NSString *)st_toDateTimeStringWithSeparator:(NSString *)separator {
    NSString *dateString = [self st_toDateStringWithSeparator:separator];
    NSString *timeString = [self st_toTimeString];
    return [dateString stringByAppendingString:timeString];
}

- (NSString *)st_toTimeInterval {
    NSTimeInterval a = [self timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%.0f", a];
    return timeString;
}

+ (NSString *)st_timeFormatFromSeconds:(NSInteger)seconds {
    NSDate *d = [NSDate dateWithTimeIntervalSince1970:seconds];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    if (seconds / 3600 >= 1) {
        [formatter setDateFormat:@"HH:mm:ss"];
    } else {
        [formatter setDateFormat:@"mm:ss"];
    }
    NSString *showtimeNew = [formatter stringFromDate:d];
    return showtimeNew;
}

@end