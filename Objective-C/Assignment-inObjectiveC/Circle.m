//
//  Circle.m
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Circle.h"

@implementation Circle

//Method Overriding
- (float)area
{
    float a = 3.14 * (self.length) * (self.length);
    return a;
}

- (float)circumference
{
    return 2 * self.length * 3.14;
}


@end
