//
//  FoodTableViewController.m
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-14.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "FoodTableViewController.h"

@interface FoodTableViewController ()

@end

@implementation FoodTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.foodTableView.delegate = self;
    self.foodTableView.dataSource = self;
    
    Food * food = [[Food alloc]init];
    self.food = food;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray * foodTableViewIDArray = @[@"ID", @"Name", @"Price", @"Made in Country", @"Size", @"Calorie"];
    //Step1 : Cell creation and Reuse
    FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
    //every time you have to check!
    if(!cell)
    {
        cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
    }
    //Step2 : Data Binding
    cell.foodTextField.placeholder = foodTableViewIDArray[indexPath.row];
    self.foodIDTextField = cell.foodTextField;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (IBAction)closeKeyBoardButton:(UIButton *)sender {
    [self.view endEditing:YES];
}

- (IBAction)addFoodButton:(UIButton *)sender {
    if(![self.foodNameTextField.text isEqualToString: @""])
    {
        self.food.productID = self.foodIDTextField.text.integerValue;
        self.food.productName = self.foodNameTextField.text;
        self.food.productPrice = self.foodPriceTextField.text.integerValue;
        self.food.productMadeCountry = self.foodMadeCountryTextField.text;
        self.food.productSize = self.foodSizeTextField.text.integerValue;
        self.food.foodCalorie = self.foodCalorieTextField.text.integerValue;
        self.food.foodIngredients = [self.foodIngredientsTextField.text componentsSeparatedByString:@","];
        self.food.productPrice = [self.food calculatePraicefromSize];
        
        //delegate call method
        [self.foodTVCDelegate foodDidCreate:self.food];
        //Close this screen
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)closeFoodButton:(UIButton *)sender {
     [self.navigationController popViewControllerAnimated:YES];
}
@end
