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
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 170;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    if(indexPath.row==0) //cloth
    {
        ClothTableViewController* viewController=  (ClothTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"ClothTableViewControllerID"];
        
        viewController.clothTVCDelegate = self;
        
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if(indexPath.row==1)
    {
        DrinkTableViewController* viewController=  (DrinkTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"DrinkTableViewControllerID"];
        
        viewController.drinkTVCDelegate = self;
        
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if(indexPath.row==2)
    {
        FoodTableViewController* viewController=  (FoodTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"FoodTableViewControllerID"];
        
        viewController.foodTVCDelegate = self;
        
        [self.navigationController pushViewController:viewController animated:YES];
    }
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

////connect to cloth, drink, food and item list page from the main page
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"ClothSegueID"])
    {
        UIViewController* uvc = segue.destinationViewController;
    
        ((ClothTableViewController*)uvc).clothTVCDelegate = self;
        
    }
    else if([[segue identifier] isEqualToString:@"DrinkSegueID"])
    {
        UIViewController* uvc = segue.destinationViewController;
        
        ((DrinkTableViewController*)uvc).drinkTVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"FoodSegueID"])
    {
        UIViewController* uvc = segue.destinationViewController;
        
        ((FoodTableViewController*)uvc).foodTVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"ItemsListSegue"])
    {
        UIViewController* uvc = segue.destinationViewController;
        
        ((ItemListViewController*)uvc).itemListVCDelegate = self;
    }
}

@end
