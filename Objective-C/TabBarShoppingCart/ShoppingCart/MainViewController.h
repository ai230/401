//
//  MainViewController.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Product.h"
//#import "Drink.h"
//#import "Food.h"
//#import "Cloth.h"
//#import "Material.h"
//#import "ShoppingCart.h"
//
//#import "MainTableViewCell.h"
//#import "ClothTableViewController.h"
//#import "DrinkTableViewController.h"
//#import "FoodTableViewController.h"
//#import "ItemListViewController.h"
//#import "MyTabBarContoller.h"

@protocol MainDelegate
@required
-(float)mainDidSelect;
@optional
@end

@interface MainViewController : UIViewController
////<ClothTVCDelegate, DrinkTVCDelegate, FoodTVCDelegate, itemListVCDelegate, MyTabBarControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;

@property (weak, nonatomic) id<MainDelegate> mainDelegate;
//@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
//@property (strong, nonatomic) ShoppingCart * shoppingcart;

//- (void)viewWillAppear:(BOOL)animated;
- (void)showAmount;
@end
