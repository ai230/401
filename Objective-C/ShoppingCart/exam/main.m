//
//  main.m
//  exam
//
//  Created by AiYamamoto on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Product.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"

int main(int argc, const char * argv[]) {
    
    Drink * drink1 = [[Drink alloc]initWithProductID:412 productName:@"Pepsi" productPrice:2 productMadeCountry:@"USA" productSize:150 isDrinkDiet:NO];
    
    Drink * drink2 = [[Drink alloc]initWithProductID:183 productName:@"Ginger Zeero" productPrice:3 productMadeCountry:@"Canada" productSize:200 isDrinkDiet:YES];

    NSMutableArray * foodIngredientsArray1;
    NSMutableArray * foodIngredientsArray2;
    foodIngredientsArray1[0] =@"chiken";
    foodIngredientsArray1[1] =@"oil";
    foodIngredientsArray1[2] =@"Chees";
    foodIngredientsArray2[0] =@"pasta";
    foodIngredientsArray2[1] =@"meet";
    foodIngredientsArray2[2] =@"spinach";
    
    Food * food1 = [[Food alloc]initWithProductID:100 productName:@"Chiken" productPrice:8 productMadeCountry:@"Canada" productSize:4 foodCalorie:250 foodIngredients:foodIngredientsArray1];
    
    Food * food2 = [[Food alloc]initWithProductID:101 productName:@"Pasta" productPrice:18 productMadeCountry:@"Canada" productSize:3 foodCalorie:250 foodIngredients:foodIngredientsArray2];
    
    //Calculate Food price = price * size
    food1.productPrice = [food1 calculatePraicefromSize];
    food2.productPrice = [food2 calculatePraicefromSize];
    
    Material * material1 = [[Material alloc]initWithMaterialCode:10 MaterialName:@"Cotton"];
    Material * material2 = [[Material alloc]initWithMaterialCode:11 MaterialName:@"Nylon"];
    
    NSMutableArray* materialArray = [[NSMutableArray alloc] init];
    [materialArray addObject:material1];
    [materialArray addObject:material2];
    
    Cloth * cloth = [[Cloth alloc]initWithProductID:701 productName:@"T-shit" productPrice:15 productMadeCountry:@"China" productSize:0 material:materialArray];

    NSMutableArray<Product*>* productsArray = [[NSMutableArray alloc]init];
    
    //Add all products an array
    ShoppingCart * shoppingcart = [[ShoppingCart alloc]initWithProductsArray:productsArray];

    [shoppingcart addPurchases:drink1];
    [shoppingcart addPurchases:drink1];
    [shoppingcart addPurchases:drink1];
    [shoppingcart addPurchases:drink2];
    [shoppingcart addPurchases:food1];
    [shoppingcart addPurchases:food1];
    [shoppingcart addPurchases:food2];
    [shoppingcart addPurchases:food2];
    [shoppingcart addPurchases:cloth];
    
    [shoppingcart calculateTotalAmount];
    [shoppingcart printPurchaseNameItems];
    
    return NSApplicationMain(argc, argv);
}
