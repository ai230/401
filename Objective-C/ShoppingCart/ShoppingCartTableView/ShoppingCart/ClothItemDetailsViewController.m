//
//  ClothItemDetailsViewController.m
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-07.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ClothItemDetailsViewController.h"

@interface ClothItemDetailsViewController ()

@end

@implementation ClothItemDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Cloth * cloth = [[Cloth alloc]initWithProductID:self.clothID.text.integerValue productName:self.clothNameTextField.text productPrice:self.clothPriceTextField.text.integerValue productMadeCountry:self.clothMadeCountryTextField.text productSize:1 material:self.clothMaterialArray];
    self.cloth = cloth;
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

- (IBAction)addClothDetailsFromButton:(UIButton *)sender {
    self.cloth.productID = self.clothID.text.integerValue;
    self.cloth.productName = self.clothNameTextField.text;
    self.cloth.productPrice = self.clothPriceTextField.text.integerValue;
    self.cloth.productMadeCountry = self.clothMadeCountryTextField.text;
    
    NSArray * materialCodeArray = [self.materialCodeTextField.text componentsSeparatedByString:@","];
    NSArray * materialNameArray = [self.materialNameTextField.text componentsSeparatedByString:@","];
    
    self.clothMaterialArray = [[NSMutableArray alloc]init];
    
    for(int i = 0; i < materialCodeArray.count; i++)
    {
        NSInteger materialCode = [materialCodeArray[i] integerValue];
        NSString * materialName = materialNameArray[i];
        
        Material * material = [[Material alloc]initWithMaterialCode:materialCode materialName:materialName];
        [self.clothMaterialArray addObject:material];
    }
    self.cloth.material = self.clothMaterialArray;
    [self.delegate clothDidCreate:self.cloth];
    //Close this screen
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)backPageFromButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
     
@end
