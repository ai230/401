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
#import "SeeItemsViewController.h"

@interface ViewController : UIViewController<DrinkItemDetailsViewControllerDelegate, FoodItemDetailsViewControllerDelegate, ClothItemDetailsViewControllerDelegate,SeeItemsVCDelegate>

@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (strong, nonatomic) ShoppingCart * shoppingcart;
//@property (weak, nonatomic) id<ViewControllerDelegate> delegate;
//- (IBAction)goToSeeItemsPage:(UIButton *)sender;

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (void)viewWillAppear:(BOOL)animated;
@end

