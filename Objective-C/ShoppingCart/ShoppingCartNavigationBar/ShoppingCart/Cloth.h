//
//  Cloth.h
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Cloth : Product
@property (nonatomic)NSInteger MaterialCode;
@property (strong, nonatomic)NSMutableArray* material;

-(id)initWithProductID:(NSInteger)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeCountry:(NSString *)productMadeCountry productSize:(NSInteger)productSize material:(NSMutableArray*)material;

@end
