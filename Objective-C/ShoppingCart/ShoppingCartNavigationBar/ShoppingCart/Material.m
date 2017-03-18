//
//  Material.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Material.h"

@implementation Material

-(id)initWithMaterialCode:(NSInteger) materialCode materialName:(NSString*)materialName
{
    self = [super init];
    if(self)
    {
        self.materialCode = materialCode;
        self.materialName = materialName;
    }
    return self;
}

- (void)createMaterialObject:(Material*)materialCode materialName:(Material*)MaterialName
{
//    Material* material = [[Material alloc]init];
//    material.materialCode = materialCode;
//    material.materialName = MaterialName;
    //return
}
@end
