//
//  NSDate+STCreation.h
//  Together
//
//  Created by TangJR on 2/5/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (STCreation)

+ (instancetype)st_stringToDate:(NSString *)string separator:(NSString *)separator;
+ (instancetype)st_stringToDateTime:(NSString *)string separator:(NSString *)separator;

@end
