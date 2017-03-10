//
//  FoodItemDetailsViewController.h
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Food.h"
#import "ShoppingCart.h"

@protocol FoodItemDetailsViewControllerDelegate
@required
-(void)foodDidCreate:(Food*)food;
@optional
@end

@interface FoodItemDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *foodIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodMadeCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodSizeTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodCalorieTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodIngredientsTextField;

@property (weak, nonatomic) id<FoodItemDetailsViewControllerDelegate> delegate;
@property (strong, nonatomic) Food * food;
@property (strong, nonatomic) NSString * foodIngredientsString;
@property (strong, nonatomic) NSArray * foodIngredientsArray;

- (IBAction)addFoodDetailsFromButton:(UIButton *)sender;
- (IBAction)backPageFromButton:(UIButton *)sender;

@end
