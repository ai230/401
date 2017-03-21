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
    self.drinkTableViewIDArray = @[@"ID", @"Name", @"Price", @"Made in Country", @"Size", @"Diet Drink? Yes or NO"];
    self.cellTextFieldArray = [[NSMutableArray alloc] init];
    
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
    
    //Step1 : Cell creation and Reuse
    DrinkTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
    //every time you have to check!
    if(!cell)
    {
        cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
    }
    //Step2 : Data Binding
    cell.drinkTextField.placeholder = self.drinkTableViewIDArray[indexPath.row];
    //TODO
    self.cellTextFieldArray[indexPath.row] = cell.drinkTextField;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (IBAction)closeKeyBoardButton:(UIButton *)sender {
    [self.view endEditing:YES];
}

- (IBAction)addDrinkButton:(UIButton *)sender {
    
    if(![self.drinkNameTextField.text isEqualToString: @""])
    {
        for(int i=0; i<self.drinkTableViewIDArray.count; i++)
        {
            if(i == 0)
            {
                //self.drink.productID = self.cellTextFieldArray[i].text.integerValue;
                self.drink.productID = self.cellTextFieldArray[i].text.integerValue;

            }
            else if(i == 1)
            {
                self.drink.productName = self.cellTextFieldArray[i].text;
            }
            else if(i == 2)
            {
                self.drink.productPrice = self.cellTextFieldArray[i].text.floatValue;
            }
            else if(i == 3)
            {
                self.drink.productMadeCountry = self.cellTextFieldArray[i].text;
            }
            else if(i == 4)
            {
                self.drink.productMadeCountry = self.cellTextFieldArray[i].text;
            }
            else if(i == 5)
            {
                self.drink.productSize = self.cellTextFieldArray[i].text.integerValue;
            }
            else
            {
                self.drink.isDrinkDiet = self.cellTextFieldArray[i].text.boolValue;
            }
        }
//        self.drink.productID = self.drinkIDTextField.text.integerValue;
//        self.drink.productName = self.drinkNameTextField.text;
//        self.drink.productPrice = self.drinkPriceTextField.text.floatValue;
//        self.drink.productMadeCountry = self.drinkMadeCountryTextField.text;
//        self.drink.productSize = self.drinkSizeTextField.text.integerValue;
//        self.drink.isDrinkDiet = self.drinkDietTextField.text.boolValue;
        
        //Delegate call method
        [self.drinkTVCDelegate drinkDidCreate:self.drink];
        //Close the screen
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)closeDrinkButton:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
