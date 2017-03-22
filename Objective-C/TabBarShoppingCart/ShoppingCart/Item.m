//
//  Item.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Item.h"

@implementation Item

-(id) initWithImageName:(NSString*) imageName desc:(NSString*) desc
{
    self = [super init];
    
    if(self)
    {
        self.imageName = imageName;
        self.desc = desc;
    }
    
    return self;
}

@end
