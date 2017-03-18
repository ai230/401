//
//  MainTableViewController.h
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-13.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"

#import "MainTableViewCell.h"
#import "ClothTableViewController.h"
#import "DrinkTableViewController.h"
#import "FoodTableViewController.h"
#import "ItemListViewController.h"

@interface MainTableViewController : UITableViewController<ClothTVCDelegate, DrinkTVCDelegate, FoodTVCDelegate, itemListVCDelegate>

@property (strong, nonatomic) IBOutlet UITableView *mainTableView;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (strong, nonatomic) ShoppingCart * shoppingcart;

- (void)viewWillAppear:(BOOL)animated;
//- (void)selectClothPageSegueId;
//- (void)selectDrinkPageSegueId;
//- (void)selectFoodPageSegueId;
@end
