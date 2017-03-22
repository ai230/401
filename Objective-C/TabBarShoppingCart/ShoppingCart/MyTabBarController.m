//
//  MyTabBarContoller.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-20.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarContoller ()

@end

@implementation MyTabBarContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.tabBarController.delegate = self;
    self.delegate = self;
    
    //            MainViewController * mainViewController = [[MainViewController alloc]init];
    //            [mainViewController showAmount];
    
    NSMutableArray<Product*>* productsArray = [[NSMutableArray alloc]init];
    ShoppingCart * shoppingcart = [[ShoppingCart alloc]initWithProductsArray:productsArray];
    self.shoppingcart = shoppingcart;
    
    //    else if([viewController isMemberOfClass:[MainViewController class]]) {
    //        ((MainViewController*)viewController).mainDelegate = self;
    //    }
    
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    // setting delegate
    if([viewController isMemberOfClass:[ClothTableViewController class]]) {
        ((ClothTableViewController*)viewController).clothTVCDelegate = self;
    }
    else if([viewController isMemberOfClass:[DrinkTableViewController class]]) {
        ((DrinkTableViewController*)viewController).drinkTVCDelegate = self;
    }
    else if([viewController isMemberOfClass:[FoodTableViewController class]]) {
        ((FoodTableViewController*)viewController).foodTVCDelegate = self;
    }
    else if([viewController isMemberOfClass:[MainViewController class]]) {
        ((MainViewController*)viewController).mainDelegate = self;
        [(MainViewController*)viewController showAmount];
    }
    else if([viewController isMemberOfClass:[ItemListUIViewController class]]) {
        ((ItemListUIViewController*)viewController).itemListVCDelegate = self;
        [(ItemListUIViewController*)viewController  listDidSelect];
    }
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
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

- (float)mainDidSelect
{
    float amount = [self.shoppingcart calculateTotalAmount];
    return amount;
}

@end
