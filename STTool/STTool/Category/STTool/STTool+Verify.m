
//
//  STTool+Verify.m
//  Together
//
//  Created by TangJR on 2/4/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool+Verify.h"

@implementation STTool (Verify)

+ (BOOL)st_isNil:(id)object {
    if (object == nil || object == [NSNull null]) {
        return YES;
    }
    if ([object isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)object;
        if (string.length == 0 || [string isEqualToString:@"nil"] || [string.uppercaseString isEqualToString:@"NULL"] || [string.uppercaseString isEqualToString:@"(NULL)"]) {
            return YES;
        }
        return NO;
    }
    if ([object isKindOfClass:[NSNumber class]]) {
        NSNumber *number = (NSNumber *)object;
        return number.integerValue == 0;
    }
    if ([object isKindOfClass:[NSArray class]]) {
        NSArray *array = (NSArray *)object;
        return array.count == 0;
    }
    if ([object isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dictionry = (NSDictionary *)object;
        return dictionry.allKeys.count == 0;
    }
    if ([object isKindOfClass:[NSSet class]]) {
        NSSet *set = (NSSet *)object;
        return set.anyObject == nil;
    }
    
    return YES;
}

+ (BOOL)st_isString:(NSString *)string minLength:(NSInteger)length {
    if (string == nil || ![string respondsToSelector:@selector(length)]) {
        return NO;
    }
    if (((NSString *)string).length < length) {
        return NO;
    }
    return YES;
}

@end
