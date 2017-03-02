//
//  Rectangle.h
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Rectangle : Shape

@property int width;

- (id)initWithLength:(int)length width:(int)width;
@end
