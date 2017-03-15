//
//  DrinkTableViewController.m
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-13.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "DrinkTableViewController.h"

@interface DrinkTableViewController ()

@end

@implementation DrinkTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.drinkTableView.delegate = self;
    self.drinkTableView.dataSource = self;
    
    Drink * drink = [[Drink alloc]init];
    self.drink = drink;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

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
        DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkTextField.placeholder = @"DrinkID";
        self.drinkIDTextField = cell.drinkTextField;
        return cell;
    }
    else if(indexPath.row == 1)
    {
        //Step1 : Cell creation and Reuse
        DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkTextField.placeholder = @"Name";
        self.drinkNameTextField = cell.drinkTextField;
        return cell;
    }
    else if(indexPath.row == 2)
    {
        //Step1 : Cell creation and Reuse
        DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkTextField.placeholder = @"Price";
        self.drinkPriceTextField = cell.drinkTextField;
        return cell;
    }
    else if(indexPath.row == 3)
    {
        //Step1 : Cell creation and Reuse
        DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkTextField.placeholder = @"Made in Country";
        self.drinkMadeCountryTextField = cell.drinkTextField;
        return cell;
    }
    else if(indexPath.row == 4)
    {
        //Step1 : Cell creation and Reuse
        DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkTextField.placeholder = @"Size";
        self.drinkSizeTextField = cell.drinkTextField;
        return cell;
    }
    else
    {
        //Step1 : Cell creation and Reuse
        DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkTextField.placeholder = @"Diet Drink? Yes or NO";
        self.drinkDietTextField = cell.drinkTextField;
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

- (IBAction)addDrinkButton:(UIButton *)sender {
    self.drink.productID = self.drinkIDTextField.text.integerValue;
    self.drink.productName = self.drinkNameTextField.text;
    self.drink.productPrice = self.drinkPriceTextField.text.integerValue;
    self.drink.productMadeCountry = self.drinkMadeCountryTextField.text;
    self.drink.productSize = self.drinkSizeTextField.text.integerValue;
    self.drink.isDrinkDiet = self.drinkDietTextField.text.boolValue;
    
    //delegate call method
    [self.drinkTVCDelegate drinkDidCreate:self.drink];
    //Close this screen
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)closeDrinkButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
