//
//  Product.h
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (nonatomic)NSInteger productID;
@property (strong, nonatomic)NSString* productName;
@property (nonatomic)float productPrice;
@property (strong, nonatomic)NSString * productMadeCountry;
@property (nonatomic)NSInteger productSize;

-(id)initWithProductID:(NSInteger)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeCountry:(NSString*)productMadeCountry productSize:(NSInteger)productSize;

@end
