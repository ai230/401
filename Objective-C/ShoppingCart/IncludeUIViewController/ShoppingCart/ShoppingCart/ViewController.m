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


// For connect UIViewController and UIViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ((DrinkItemDetailsViewController*)segue.destinationViewController).delegate = self;
    ((FoodItemDetailsViewController*)segue.destinationViewController).delegate = self;
    ((ClothItemDetailsViewController*)segue.destinationViewController).delegate = self;
}

//Do it when the screen appear
- (void)viewWillAppear:(BOOL)animated
{
    float amount = [self.shoppingcart calculateTotalAmount];
    self.totalAmountLabel.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", amount]];
}
@end
