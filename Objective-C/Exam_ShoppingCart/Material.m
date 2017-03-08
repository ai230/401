//
//  Material.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Material.h"

@implementation Material

-(id)initWithMaterialCode:(NSInteger) MaterialCode MaterialName:(NSString*)MaterialName
{
    self = [super init];
    if(self)
    {
        self.MaterialCode = MaterialCode;
        self.MaterialName = MaterialName;
    }
    return self;
}

@end
