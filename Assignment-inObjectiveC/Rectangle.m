//
//  Rectangle.m
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (id)initWithLength:(int)length width:(int)width
{
    self = [super initWithLength:length];
    if (self) {
        self.width = width;
    }
    return self;
}

- (float)area
{
    float a = self.length * self.width;
    return a;
}

- (float)circumference
{
    return 2 * (self.length + self.width);
}

@end
