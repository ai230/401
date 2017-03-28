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
    
    self.foodTableViewIDArray = @[@"ID", @"Name", @"Price", @"Made in Country", @"Size", @"Calorie"];
    self.cellTextFieldArray = [[NSMutableArray alloc] init];
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

    //Step1 : Cell creation and Reuse
    FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
    //every time you have to check!
    if(!cell)
    {
        cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
    }
    //Step2 : Data Binding
    cell.foodTextField.placeholder = self.foodTableViewIDArray[indexPath.row];
    self.cellTextFieldArray[indexPath.row] = cell.foodTextField;
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
    
    if(![self.cellTextFieldArray[1].text isEqualToString: @""])
    {
        for(int i=0; i<self.foodTableViewIDArray.count; i++)
        {
            if(i == 0)
            {
                self.food.productID = self.cellTextFieldArray[i].text.integerValue;
            }
            else if(i == 1)
            {
                self.food.productName = self.cellTextFieldArray[i].text;
            }
            else if(i == 2)
            {
                self.food.productPrice = self.cellTextFieldArray[i].text.floatValue;
            }
            else if(i == 3)
            {
                self.food.productMadeCountry = self.cellTextFieldArray[i].text;
            }
            else if(i == 4)
            {
                self.food.productMadeCountry = self.cellTextFieldArray[i].text;
            }
            else if(i == 5)
            {
                self.food.productSize = self.cellTextFieldArray[i].text.integerValue;
            }
            else
            {
                self.food.foodCalorie = self.cellTextFieldArray[i].text.boolValue;
            }
        }
    }
    self.food.productPrice = [self.food calculatePraicefromSize];
    
    //delegate call method
    [self.foodTVCDelegate foodDidCreate:self.food];
    //Close this screen
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)closeFoodButton:(UIButton *)sender {
     [self.navigationController popViewControllerAnimated:YES];
}
@end
