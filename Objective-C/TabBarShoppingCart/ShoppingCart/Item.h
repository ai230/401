//
//  Item.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (strong, nonatomic) NSString* imageName;
@property (strong, nonatomic) NSString* desc;

-(id) initWithImageName:(NSString*) imageName desc:(NSString*) desc;


@end
