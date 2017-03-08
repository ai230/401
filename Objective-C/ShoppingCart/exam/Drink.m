//
//  Drink.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Drink.h"

@implementation Drink

-(id)initWithProductID:(NSInteger)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeCountry:(NSString *)productMadeCountry productSize:(NSInteger)productSize isDrinkDiet:(BOOL)isDrinkDiet
{
    self = [super initWithProductID:productID productName:productName productPrice:productPrice productMadeCountry:productMadeCountry productSize:productSize];
    if(self)
    {
        self.isDrinkDiet = isDrinkDiet;
    }
    return self;
}

@end
