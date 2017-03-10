//
//  ViewController.h
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"
#import "DrinkItemDetailsViewController.h"
#import "FoodItemDetailsViewController.h"
#import "ClothItemDetailsViewController.h"
#import "ViewController.h"

@protocol ViewControllerDelegate

@required
//Method Call-back function
- (void)itemsDidCreate:(ShoppingCart*)shoppingcart;
@optional
@end

@interface ViewController : UIViewController<DrinkItemDetailsViewControllerDelegate, FoodItemDetailsViewControllerDelegate, ClothItemDetailsViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (strong, nonatomic) ShoppingCart * shoppingcart;
@property (weak, nonatomic) id<ViewControllerDelegate> delegate;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (void)viewWillAppear:(BOOL)animated;
@end

