//
//  MainTableViewController.m
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-13.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    
    NSMutableArray<Product*>* productsArray = [[NSMutableArray alloc]init];
    ShoppingCart * shoppingcart = [[ShoppingCart alloc]initWithProductsArray:productsArray];
    self.shoppingcart = shoppingcart;
}

- (void)viewWillAppear:(BOOL)animated
{
    float amount = [self.shoppingcart calculateTotalAmount];
    self.totalAmountLabel.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", amount]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == 0)
    {
        //Step1 : Cell creation and Reuse
        MainTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[MainTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainTableViewID"];
        }
        //Step2 : Data Binding
        cell.mainImageView.image = [UIImage imageNamed:@"cloth"];
        [cell.addButton addTarget:self action:@selector(selectClothPageSegueId) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
    else if(indexPath.row == 1)
    {
        //Step1 : Cell creation and Reuse
        MainTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[MainTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainTableViewID"];
        }
        //Step2 : Data Binding
        cell.mainImageView.image = [UIImage imageNamed:@"drink"];
        
        [cell.addButton addTarget:self action:@selector(selectDrinkPageSegueId) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
    else
    {
        //Step1 : Cell creation and Reuse
        MainTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[MainTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainTableViewID"];
        }
        //Step2 : Data Binding
        cell.mainImageView.image = [UIImage imageNamed:@"food"];
        [cell.addButton addTarget:self action:@selector(selectFoodPageSegueId) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 190;
}

- (void)clothDidCreate:(Cloth*)cloth
{
    [self.shoppingcart addPurchases:cloth];
}

- (void)drinkDidCreate:(Drink*)drink
{
    [self.shoppingcart addPurchases:drink];
}

- (void)foodDidCreate:(Food*)food
{
    [self.shoppingcart addPurchases:food];
}

- (NSMutableArray<Product*>*)itemListDidCreate
{
    return self.shoppingcart.productsArray;
}

//connect to cloth, drink, food and item list page from the main page
- (void)selectClothPageSegueId
{
    [self performSegueWithIdentifier:@"ClothSegueID" sender:self];
}
- (void)selectDrinkPageSegueId
{
    [self performSegueWithIdentifier:@"DrinkSegueID" sender:self];
}
- (void)selectFoodPageSegueId
{
    [self performSegueWithIdentifier:@"FoodSegueID" sender:self];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //compile error
    if([[segue identifier] isEqualToString:@"ClothSegueID"])
    {
        ((ClothTableViewController*)segue.destinationViewController).clothTVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"DrinkSegueID"])
    {
        ((DrinkTableViewController*)segue.destinationViewController).drinkTVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"FoodSegueID"])
    {
        ((FoodTableViewController*)segue.destinationViewController).foodTVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"ItemsListSegueID"])
    {
        ((ItemListViewController*)segue.destinationViewController).itemListVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"ItemsListSegue"])
    {
        ((ItemListViewController*)segue.destinationViewController).itemListVCDelegate = self;
    }
}

@end
