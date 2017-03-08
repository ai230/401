//
//  DrinkItemDetailsViewController.m
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "DrinkItemDetailsViewController.h"
#import "ViewController.h"
#import "Drink.h"
#import "ShoppingCart.h"

@interface DrinkItemDetailsViewController ()


@end

@implementation DrinkItemDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Drink * drink = [[Drink alloc]init];
    self.drink = drink;
    NSMutableArray<Product*>* productsArray = [[NSMutableArray alloc]init];
    ShoppingCart * shoppingcart = [[ShoppingCart alloc]initWithProductsArray:productsArray];
    self.shoppingcart = shoppingcart;
    
    DrinkItemDetailsViewController * drinkItemDetailsViewController = [[DrinkItemDetailsViewController alloc]init];
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


- (IBAction)addDrinkDetailsFromButton:(UIButton *)sender {
    self.drink.productID = self.drinkIDTextField.text.integerValue;
    self.drink.productName = self.drinkNameTextField.text;
    self.drink.productPrice = self.drinkPriceTextField.text.integerValue;
    self.drink.productMadeCountry = self.drinkMadoInCountryTextField.text;
    self.drink.productSize = self.drinkSizeTextField.text.integerValue;
    self.drink.isDrinkDiet = self.drinkDietTextField.text.boolValue;
    [self.shoppingcart addPurchases:self.drink];
}

- (IBAction)backPageFromButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
