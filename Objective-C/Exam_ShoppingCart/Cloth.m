//
//  Cloth.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Cloth.h"

@implementation Cloth

-(id)initWithProductID:(NSInteger)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeCountry:(NSString *)productMadeCountry productSize:(NSInteger)productSize material:(NSMutableArray*)material
{
    self = [super initWithProductID:productID productName:productName productPrice:productPrice productMadeCountry:productMadeCountry productSize:productSize];
    if(self)
    {
        self.material = material;
    }
    return self;
}

@end
