//
//  Shape.m
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Shape.h"

@implementation Shape

//constructors
- (id)initWithLength:(int)length
{
    self = [super init];//constructor init -> allocate memory
    if (self) {
        self.length = length;
    }
    return self;
}

- (float)area
{
    return 0;
}

- (float)circumference
{
    return 0;
}

@end
