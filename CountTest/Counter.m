//
//  Counter.m
//  CountTest
//
//  Created by Ishikawa Naoki on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Counter.h"

@implementation Counter

@synthesize count = _count;

- (id)init {
    self = [super init];
    if (self) {
        //initialize zero count
        _count = 0;
    }
    return self;
}

- (void)increment {
    _count += 1;
}

- (void)decrement {
    _count -= 1;
}

- (void)reset {
    _count = 0;
}

@end
