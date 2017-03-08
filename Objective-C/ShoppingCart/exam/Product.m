//
//  Product.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Product.h"

@implementation Product

-(id)initWithProductID:(NSInteger)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeCountry:(NSString*)productMadeCountry productSize:(NSInteger)productSize
{
    self = [super init];
    if(self)
    {
        self.productID = productID;
        self.productName = productName;
        self.productPrice = productPrice;
        self.productMadeCountry = productMadeCountry;
        self.productSize = productSize;
    }
    return self;
}

@end
