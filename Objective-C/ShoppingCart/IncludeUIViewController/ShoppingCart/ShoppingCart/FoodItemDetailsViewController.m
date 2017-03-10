//
//  FoodItemDetailsViewController.m
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "FoodItemDetailsViewController.h"

@interface FoodItemDetailsViewController ()

@end

@implementation FoodItemDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Food * food = [[Food alloc]initWithProductID:self.foodIDTextField.text.integerValue productName:self.foodNameTextField.text productPrice:self.foodPriceTextField.text.floatValue productMadeCountry:self.foodMadeCountryTextField.text productSize:self.foodSizeTextField.text.integerValue foodCalorie:self.foodCalorieTextField.text.integerValue foodIngredients:self.foodIngredientsArray];
    self.food = food;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addFoodDetailsFromButton:(UIButton *)sender {
    self.food.productID = self.foodIDTextField.text.integerValue;
    self.food.productName = self.foodNameTextField.text;
    self.food.productPrice = self.foodPriceTextField.text.integerValue;
    self.food.productMadeCountry = self.foodMadeCountryTextField.text;
    self.food.productSize = self.foodSizeTextField.text.integerValue;
    self.food.foodCalorie = self.foodCalorieTextField.text.integerValue;
    self.food.foodIngredients = [self.foodIngredientsTextField.text componentsSeparatedByString:@","];
    
    self.food.productPrice = [self.food calculatePraicefromSize];
    
    [self.delegate foodDidCreate:self.food];
    //Close this screen
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backPageFromButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
