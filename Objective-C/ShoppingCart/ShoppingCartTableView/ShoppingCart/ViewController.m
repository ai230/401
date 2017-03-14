//
//  ViewController.m
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray<Product*>* productsArray = [[NSMutableArray alloc]init];
    
    //Add all products an array
    ShoppingCart * shoppingcart = [[ShoppingCart alloc]initWithProductsArray:productsArray];
    self.shoppingcart = shoppingcart;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drinkDidCreate:(Drink*)drink
{
    [self.shoppingcart addPurchases:drink];
}

- (void)foodDidCreate:(Food*)food
{
    [self.shoppingcart addPurchases:food];
}

- (void)clothDidCreate:(Cloth*)cloth
{
    [self.shoppingcart addPurchases:cloth];
}

- (NSMutableArray*)seeItemsDidCreate
{
    NSMutableArray * productNameArray = [[NSMutableArray alloc]init];
    for(int i=0; i<self.shoppingcart.productsArray.count; i++)
    {
        NSLog(@"%@",self.shoppingcart.productsArray[i].productName);
        productNameArray[i] = self.shoppingcart.productsArray[i].productName;
    }
    return productNameArray;
}

- (NSMutableArray<Product*>*)itemListDidCreate
{
    return self.shoppingcart.productsArray;
}

// For connect UIViewController and UIViewController
//- (IBAction)goToSeeItemsPage:(UIButton *)sender {
//    [self.delegate seeItemsDidCreate:self.shoppingcart];
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //compile error
    if([[segue identifier] isEqualToString:@"DrinkSegue"])
    {
        ((DrinkItemDetailsViewController*)segue.destinationViewController).delegate = self;
    }
    else if([[segue identifier] isEqualToString:@"FoodSegue"])
    {
        ((FoodItemDetailsViewController*)segue.destinationViewController).delegate = self;
    }
    else if([[segue identifier] isEqualToString:@"ClothSegue"])
    {
        ((ClothItemDetailsViewController*)segue.destinationViewController).delegate = self;
    }
    else if([[segue identifier] isEqualToString:@"SeeItemsSegue"])
    {
        ((SeeItemsViewController*)segue.destinationViewController).seedVCDelegate = self;
    }
    else if([[segue identifier] isEqualToString:@"ItemsListSegue"])
    {
        ((ItemListViewController*)segue.destinationViewController).itemListVCDelegate = self;
    }
    
}

//Do it when the screen appear
- (void)viewWillAppear:(BOOL)animated
{
    float amount = [self.shoppingcart calculateTotalAmount];
    self.totalAmountLabel.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", amount]];
}
@end
