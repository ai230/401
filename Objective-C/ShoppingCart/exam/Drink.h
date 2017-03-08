//
//  Drink.h
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Drink : Product
@property (nonatomic)BOOL isDrinkDiet;

-(id)initWithProductID:(NSInteger)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeCountry:(NSString *)productMadeCountry productSize:(NSInteger)productSize isDrinkDiet:(BOOL)isDrinkDiet;

@end
