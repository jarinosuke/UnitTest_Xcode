//
//  Counter.h
//  CountTest
//
//  Created by Ishikawa Naoki on 2/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Counter : NSObject {
    int _count;
}

@property(nonatomic, assign)int count;

- (id)init;
- (void)increment;
- (void)decrement;
- (void)reset;

@end
