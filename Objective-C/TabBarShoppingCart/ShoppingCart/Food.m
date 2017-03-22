//
//  Food.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Food.h"

@implementation Food

-(id)initWithProductID:(NSInteger)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeCountry:(NSString *)productMadeCountry productSize:(NSInteger)productSize foodCalorie:(NSInteger)foodCalorie foodIngredients:(NSArray*)foodIngredients
{
    self = [super initWithProductID:productID productName:productName productPrice:productPrice productMadeCountry:productMadeCountry productSize:productSize];
    if(self)
    {
        self.foodCalorie = foodCalorie;
        self.foodIngredients = foodIngredients;
    }
    return self;
}

-(float)calculatePraicefromSize
{
    if(self.productSize == 0)
    {
        self.productSize = 1;
    }
    float foodPriceFromSize = self.productPrice * self.productSize;
    return foodPriceFromSize;
}

@end
