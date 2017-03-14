//
//  Food.h
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Food : Product
@property (nonatomic)NSInteger foodCalorie;
@property (nonatomic)NSInteger foodSize;
@property (nonatomic)NSArray * foodIngredients;

-(id)initWithProductID:(NSInteger)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeCountry:(NSString *)productMadeCountry productSize:(NSInteger)productSize foodCalorie:(NSInteger)foodCalorie foodIngredients:(NSArray*)foodIngredients;

-(float)calculatePraicefromSize;

@end
