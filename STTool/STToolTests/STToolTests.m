//
//  STToolTests.m
//  STToolTests
//
//  Created by saitjr on 8/28/16.
//  Copyright © 2016 saitjr. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIView+STExtension.h"

@interface STToolTests : XCTestCase

@end

@implementation STToolTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSLog(@"%s", __FUNCTION__);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"%s", __FUNCTION__);
}

- (void)testMaxX {
    UIView *view = [UIView new];
    view.frame = CGRectMake(0, 0, 100, 100);
    view.maxX = [UIScreen mainScreen].bounds.size.width;
    
    UIView *view2 = [UIView new];
    view2.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 100, 0, 100, 100);
    
    XCTAssert(CGRectEqualToRect(view.frame, view2.frame));
}

- (void)testMaxY {
    UIView *view = [UIView new];
    view.frame = CGRectMake(0, 0, 100, 100);
    view.maxY = [UIScreen mainScreen].bounds.size.height;
    
    UIView *view2 = [UIView new];
    view2.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 100, 100, 100);
    
    XCTAssert(CGRectEqualToRect(view.frame, view2.frame));
}

@end
