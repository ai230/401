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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == 0)
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"FoodTableViewID";
        self.foodIDTextField = cell.foodTextField;
        return cell;
    }
    else if(indexPath.row == 1)
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"Name";
        self.foodNameTextField = cell.foodTextField;
        return cell;
    }
    else if(indexPath.row == 2)
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"Price";
        self.foodPriceTextField = cell.foodTextField;
        return cell;
    }
    else if(indexPath.row == 3)
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"Made in Country";
        self.foodMadeCountryTextField = cell.foodTextField;
        return cell;
    }
    else if(indexPath.row == 4)
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"Size";
        self.foodSizeTextField = cell.foodTextField;
        return cell;
    }
    else if(indexPath.row == 5)
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"Calorie";
        self.foodCalorieTextField = cell.foodTextField;
        return cell;
    }
    else
    {
        //Step1 : Cell creation and Reuse
        FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodTextField.placeholder = @"Calorie";
        self.foodIngredientsTextField = cell.foodTextField;
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (IBAction)closeKeyBoardButton:(UIButton *)sender {
    [self.view endEditing:YES];
}

- (IBAction)addFoodButton:(UIButton *)sender {
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
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)closeFoodButton:(UIButton *)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
