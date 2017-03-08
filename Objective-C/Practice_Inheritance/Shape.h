//
//  Shape.h
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property int length;


- (id)initWithLength:(int)length;
- (float)area;
- (float)circumference;

@end
