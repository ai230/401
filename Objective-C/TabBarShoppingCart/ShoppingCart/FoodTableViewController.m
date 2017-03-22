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
    self.tableViewIDArray = @[@"ID", @"Name", @"Price", @"Made in Country", @"Size", @"Calorie"];
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
    FoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
    //every time you have to check!
    if(!cell)
    {
        cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
    }
    //Step2 : Data Binding
    cell.foodTextField.text = @"";
    cell.foodTextField.placeholder = self.tableViewIDArray[indexPath.row];
    self.cellTextFieldArray[indexPath.row] = cell.foodTextField;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
}

- (IBAction)closeKeyBoardButton:(UIButton *)sender {
    [self.view endEditing:YES];
}
-(UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    HeaderUIView* headerView = [[HeaderUIView alloc] initWithFrame:frame];
    headerView.headerImageView.image = [UIImage imageNamed:@"food"];
    //headerView.contentView.backgroundColor = [UIColor lightGrayColor];
    
    return headerView;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}

-(UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    FooterUIView* footerView = [[FooterUIView alloc] initWithFrame:frame];
    
    //footerView.contentView.backgroundColor = [UIColor orangeColor];
    footerView.FooterDelegate = self;
    return footerView;
    
}

-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 80;
}

- (IBAction)closeDrinkButton:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonWasPressed {
    if(![self.cellTextFieldArray[1].text isEqualToString: @""])
    {
        for(int i=0; i<self.tableViewIDArray.count; i++)
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
                self.food.productPrice = self.cellTextFieldArray[i].text.integerValue;
            }
            else if(i == 3)
            {
                self.food.productMadeCountry = self.cellTextFieldArray[i].text;
            }
            else if(i == 4)
            {
                self.food.productSize = self.cellTextFieldArray[i].text.integerValue;
            }
            else if(i == 5)
            {
                self.food.foodCalorie = self.cellTextFieldArray[i].text.integerValue;
            }
            else
            {
                self.food.foodIngredients = [self.cellTextFieldArray[i].text componentsSeparatedByString:@","];
            }
            
            self.food.productPrice = [self.food calculatePraicefromSize];
        }
        //delegate call method
        [self.foodTVCDelegate foodDidCreate:self.food];
        //When add button is plessed input data in the text field will be deleted
        [self.foodTableView reloadData];
    }
}
@end
