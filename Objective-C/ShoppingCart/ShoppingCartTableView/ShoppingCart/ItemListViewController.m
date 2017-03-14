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

    //TODO get prductArray and find name of class, put in the array below
    for(int i = 0; i < productsArray.count; i++)
    {
        Product * product = [productsArray objectAtIndex:i];
        if([product isMemberOfClass:[Drink class]])
        {
            //drinkArray[i] = productsArray[i].productName;
            [self.drinkArray addObject:product];
        }
        else if([product isMemberOfClass:[Food class]])
        {
            //foodArray[i] = productsArray[i].productName;
            [self.foodArray addObject:product];
        }
        else if([product isMemberOfClass:[Cloth class]])
        {
            //clothArray[i] = productsArray[i].productName;
            [self.clothArray addObject:product];
        }
    }

//    self.itemsForSection0 = [drinkArray mutableCopy];
//    self.itemsForSection1 = [foodArray mutableCopy];
//    self.itemsForSection2 = [clothArray mutableCopy];
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
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return self.drinkArray.count;
    }
    else if(section == 1)
    {
        return self.foodArray.count;
    }
    else
    {
        return self.clothArray.count;
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
    else if(indexPath.section == 1)
    {
        //Step1 : Cell creation and Reuse
        ItemsListTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ItemsListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewID"];
        }
        //Step2 : Data Binding
        cell.foodImageCell.image = [UIImage imageNamed:@"food"];
        cell.foodNameLabelCell.text = self.foodArray[indexPath.row].productName;
        cell.foodAmountLabelCell.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", self.foodArray[indexPath.row].productPrice]];
        return cell;
    }
    else
    {
        ItemsListTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        if(!cell)
        {
            cell = [[ItemsListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        cell.clothImageCell.image = [UIImage imageNamed:@"cloth"];
        cell.clothNameLabelCell.text = self.clothArray[indexPath.row].productName;
        cell.clothAmountLabelCell.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", self.clothArray[indexPath.row].productPrice]];
        return cell;
    }
}

- (IBAction)closeButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
