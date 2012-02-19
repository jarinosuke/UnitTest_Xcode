//
//  CountTestTests.m
//  CountTestTests
//
//  Created by Ishikawa Naoki on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CountTestTests.h"

@implementation CountTestTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    _counter = [[Counter alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    [_counter release];
    [super tearDown];
}

- (void)testInit {
    STAssertNotNil(_counter, @"カウンターが初期化できません。");
    STAssertEquals(_counter.count, 0, @"カウンターの初期値が0ではありません");
}

- (void)testIncrement {
    [_counter increment];
    
    STAssertEquals(_counter.count, 1, @"カウンターのインクリメントに失敗しました。");
}

- (void)testIncrementResetsToZeroAfterTen {
    for(int i = 0; i < 10; i++) {
        [_counter increment];
    }
    STAssertEquals(_counter.count, 10, @"カウンターの値が10になっていません。");
    
    [_counter reset];
    
    STAssertEquals(_counter.count, 0, @"カウンターが10の値から正しくリセットされていません。");
}

- (void)testDecrement {
    [_counter increment];
    [_counter decrement];
    
    STAssertEquals(_counter.count, 0, @"カウンターが正しくデクリメントされていません。");
}

- (void)testReset {
    [_counter increment];
    [_counter increment];
    [_counter increment];
    STAssertEquals(_counter.count, 3, @"カウンターが正しく3回インクリメントされていません。");
    [_counter reset];
    STAssertEquals(_counter.count, 0, @"カウンターが正しくリセットされていません。");
}

@end
