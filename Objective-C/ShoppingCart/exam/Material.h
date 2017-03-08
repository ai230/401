//
//  Material.h
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Material : Product

@property (nonatomic)NSInteger MaterialCode;
@property (strong, nonatomic)NSString * MaterialName;

-(id)initWithMaterialCode:(NSInteger)MaterialCode MaterialName:(NSString*)MaterialName;

@end
