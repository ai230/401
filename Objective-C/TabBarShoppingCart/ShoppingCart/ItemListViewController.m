//
//  ItemListViewController.m
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-12.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ItemListViewController.h"

@interface ItemListViewController ()

@end

@implementation ItemListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSMutableArray<Product*>* productsArray = [[NSMutableArray<Product*> alloc]init];
    productsArray = [self.itemListVCDelegate itemListDidCreate];
    
    self.drinkArray = [[NSMutableArray alloc]init];
    self.foodArray = [[NSMutableArray alloc]init];
    self.clothArray = [[NSMutableArray alloc]init];

    for(int i = 0; i < productsArray.count; i++)
    {
        Product * product = [productsArray objectAtIndex:i];
        if([product isMemberOfClass:[Drink class]])
        {
            [self.drinkArray addObject:product];
        }
        else if([product isMemberOfClass:[Food class]])
        {
            [self.foodArray addObject:product];
        }
        else if([product isMemberOfClass:[Cloth class]])
        {
            [self.clothArray addObject:product];
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return self.clothArray.count;
    }
    else if(section == 1)
    {
        return self.drinkArray.count;
    }
    else
    {
        return self.foodArray.count;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.section == 0)
    {
        ItemsListTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        if(!cell)
        {
            cell = [[ItemsListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        cell.clothImageCell.image = [UIImage imageNamed:@"cloth"];
        cell.clothNameLabelCell.text = self.clothArray[indexPath.row].productName;
        cell.clothAmountLabelCell.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", self.clothArray[indexPath.row].productPrice]];
        cell.clothMadeCountryLabel.text = self.clothArray[indexPath.row].productMadeCountry;
        
        return cell;
    }
    else if(indexPath.section == 1)
    {
        //Step1 : Cell creation and Reuse
        ItemsListTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ItemsListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewID"];
        }
        //Step2 : Data Binding
        cell.drinkImageCell.image = [UIImage imageNamed:@"drink"];
        cell.drinkNameLabelCell.text = self.drinkArray[indexPath.row].productName;
        cell.drinkAmountLabelCell.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", self.drinkArray[indexPath.row].productPrice]];
        return cell;
    }
    else
    {
        ItemsListTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        if(!cell)
        {
            cell = [[ItemsListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        cell.foodImageCell.image = [UIImage imageNamed:@"food"];
        cell.foodNameLabelCell.text = self.foodArray[indexPath.row].productName;
        cell.foodAmountLabelCell.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", self.foodArray[indexPath.row].productPrice]];
        return cell;
    }
}

- (IBAction)closeButton:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
