//
//  CountTestTests.h
//  CountTestTests
//
//  Created by Ishikawa Naoki on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "Counter.h"

@interface CountTestTests : SenTestCase {
    @private
    Counter *_counter;
}

- (void)testInit;
- (void)testIncrement;
- (void)testIncrementResetsToZeroAfterTen;
- (void)testDecrement;
- (void)testReset;

@end
