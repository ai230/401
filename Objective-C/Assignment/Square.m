//
//  Square.m
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Square.h"

@implementation Square

- (float)area
{
    float a = self.length * self.length;
    return a;
}

- (float)circumference
{
    return 4 * self.length;
}

@end
