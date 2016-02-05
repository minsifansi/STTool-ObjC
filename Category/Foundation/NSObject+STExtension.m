//
//  NSObject+STExtension.m
//  Car
//
//  Created by TangJR on 11/24/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import "NSObject+STExtension.h"

@implementation NSObject (STExtension)

- (BOOL)st_isNil {
    if (self == nil || self == [NSNull null]) {
        return YES;
    }
    if ([self isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)self;
        if (string.length == 0 || [string isEqualToString:@"nil"] || [string.uppercaseString isEqualToString:@"NULL"] || [string.uppercaseString isEqualToString:@"(NULL)"]) {
            return YES;
        }
        return NO;
    }
    if ([self isKindOfClass:[NSNumber class]]) {
        NSNumber *number = (NSNumber *)self;
        return number.integerValue == 0;
    }
    if ([self isKindOfClass:[NSArray class]]) {
        NSArray *array = (NSArray *)self;
        return array.count == 0;
    }
    if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dictionry = (NSDictionary *)self;
        return dictionry.allKeys.count == 0;
    }
    if ([self isKindOfClass:[NSSet class]]) {
        NSSet *set = (NSSet *)self;
        return set.anyObject == nil;
    }
    
    return YES;
}

- (BOOL)st_isStringLengthMoreThan:(NSInteger)length {
    if (self == nil || ![self respondsToSelector:@selector(length)]) {
        return NO;
    }
    if (((NSString *)self).length < length) {
        return NO;
    }
    return YES;
}

@end