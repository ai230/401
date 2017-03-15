//
//  ShoppingCart.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ShoppingCart.h"

@implementation ShoppingCart
-(id)initWithProductsArray:(NSMutableArray<Product*>*) productsArray
{
    self = [super init];
    if(self)
    {
        self.productsArray = productsArray;
    }
    return self;
}

-(void)addPurchases:(Product*)product
{
    [self.productsArray addObject:product];
}

- (float)calculateTotalAmount
{
    float amount = 0.0;
    for(int i=0; i<self.productsArray.count; i++)
    {
        amount = amount + self.productsArray[i].productPrice;

    }
    NSLog(@"Total Amount is %.2f",amount);
    return amount;
}

-(void)printPurchaseNameItems
{
    NSLog(@"The items you purchased:\n");
    for(int i=0; i<self.productsArray.count; i++)
    {
        NSLog(@"%@",self.productsArray[i].productName);
    }
}
@end
