//
//  MyTabBarContoller.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-20.
//  Copyright © 2017 CICCC. All rights reserved.
//
//http://ameblo.jp/fumin65/entry-11341997812.html

#import <UIKit/UIKit.h>
#import "DrinkTableViewController.h"
#import "FoodTableViewController.h"
#import "ClothTableViewController.h"
#import "ItemListUIViewController.h"
#import "MainViewController.h"
#import "ShoppingCart.h"
#import "Product.h"
#import "Drink.h"

@interface MyTabBarContoller : UITabBarController<UITabBarControllerDelegate,ClothTVCDelegate,DrinkTVCDelegate,FoodTVCDelegate,MainDelegate,itemListVCDelegate>

@property (strong, nonatomic) ShoppingCart * shoppingcart;
//@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@end
