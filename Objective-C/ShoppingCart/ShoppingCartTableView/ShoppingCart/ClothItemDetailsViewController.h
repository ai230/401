//
//  ClothItemDetailsViewController.h
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"

@protocol ClothItemDetailsViewControllerDelegate

-(void)clothDidCreate:(Cloth*)cloth;

@end

@interface ClothItemDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *clothID;
@property (weak, nonatomic) IBOutlet UITextField *clothNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothMadeCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *materialNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *materialCodeTextField;

@property (weak, nonatomic) id<ClothItemDetailsViewControllerDelegate> delegate;
@property (strong, nonatomic) Cloth * cloth;
@property (strong, nonatomic) Material * material;
@property (strong, nonatomic) NSMutableArray* clothMaterialArray;

- (IBAction)addClothDetailsFromButton:(UIButton *)sender;
- (IBAction)backPageFromButton:(UIButton *)sender;
@end
