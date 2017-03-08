//
//  DrinkItemDetailsViewController.h
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

@interface DrinkItemDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *drinkIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkMadoInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkSizeTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkDietTextField;

- (IBAction)addDrinkDetailsFromButton:(UIButton *)sender;
- (IBAction)backPageFromButton:(UIButton *)sender;


@end
