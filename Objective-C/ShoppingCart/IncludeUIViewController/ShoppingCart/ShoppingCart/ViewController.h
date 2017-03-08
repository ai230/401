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

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *productNameInMyCartTextView;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;

@property (strong, nonatomic) Drink * drink;
@property (strong, nonatomic) ShoppingCart * shoppingcart;

- (IBAction)addDrinkInMyCart:(UIButton *)sender;
- (IBAction)addFoodInMyCart:(UIButton *)sender;
- (IBAction)addClothInMyCart:(UIButton *)sender;
- (IBAction)getPriceOfMyItems:(UIButton *)sender;

@end

