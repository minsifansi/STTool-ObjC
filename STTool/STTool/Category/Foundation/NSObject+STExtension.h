//
//  NSObject+STExtension.h
//  Car
//
//  Created by TangJR on 11/24/15.
//  Copyright © 2015 tangjr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (STExtension)

- (BOOL)st_isNil;
- (BOOL)st_isStringLengthMoreThan:(NSInteger)length;
+ (NSString *)st_className;

@end