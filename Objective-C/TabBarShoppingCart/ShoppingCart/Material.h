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

@property (nonatomic)NSInteger materialCode;
@property (strong, nonatomic)NSString * materialName;

- (id)initWithMaterialCode:(NSInteger)materialCode materialName:(NSString*)materialName;

- (void)createMaterialObject:(Material*)materialCode materialName:(Material*)MaterialName;
@end
