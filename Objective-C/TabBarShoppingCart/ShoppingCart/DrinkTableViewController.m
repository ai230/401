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
    self.tableViewIDArray = @[@"ID", @"Name", @"Price", @"Made in Country", @"Size", @"Diet Drink? Yes or NO"];
    self.cellTextFieldArray = [[NSMutableArray alloc] init];
    
    
    
    //test
//    DrinkTableViewController *drinkView = ... // Init your view
//    // Set the delegate
//    view.delegate = self;

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
    cell.drinkTextField.placeholder = self.tableViewIDArray[indexPath.row];
    //TODO
    self.cellTextFieldArray[indexPath.row] = cell.drinkTextField;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

//- (IBAction)closeKeyBoardButton:(UIButton *)sender {
//    [self.view endEditing:YES];
//}

//- (IBAction)addDrinkButton:(UIButton *)sender {
//    
//
//}

-(UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    HeaderUIView* headerView = [[HeaderUIView alloc] initWithFrame:frame];
    
    headerView.headerImageView.image = [UIImage imageNamed:@"drink"];
    
    headerView.contentView.backgroundColor = [UIColor lightGrayColor];
    
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
    return 100;
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
                //self.drink.productID = self.cellTextFieldArray[i].text.integerValue;
                self.drink.productID = self.cellTextFieldArray[i].text.integerValue;
                //self.cellTextFieldArray[i].text = @"";
                
            }
            else if(i == 1)
            {
                self.drink.productName = self.cellTextFieldArray[i].text;
                //self.cellTextFieldArray[i].text = @"";
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
        
        [self.drinkTVCDelegate drinkDidCreate:self.drink];
    }
}

@end
