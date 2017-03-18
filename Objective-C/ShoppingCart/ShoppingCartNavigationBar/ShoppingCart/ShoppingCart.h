//
//  ShoppingCart.h
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "Food.h"
@interface ShoppingCart : NSObject

@property (strong, nonatomic)NSMutableArray<Product*>* productsArray;

-(id)initWithProductsArray:(NSMutableArray<Product*>*) productsArray;

-(void)addPurchases:(Product*)product;

-(float)calculateTotalAmount;

-(void)printPurchaseNameItems;

@end
