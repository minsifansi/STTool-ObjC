//
//  UIColor+STExtension.h
//  BLEShoes
//
//  Created by TangJR on 4/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (STExtension)

@property (assign, nonatomic, readonly) CGFloat st_red;
@property (assign, nonatomic, readonly) CGFloat st_green;
@property (assign, nonatomic, readonly) CGFloat st_blue;
@property (assign, nonatomic, readonly) CGFloat st_alpha;

- (NSString *)st_toHexString;

@end