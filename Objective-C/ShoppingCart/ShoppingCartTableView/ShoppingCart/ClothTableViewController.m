//
//  ClothTableViewController.m
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-14.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ClothTableViewController.h"

@interface ClothTableViewController ()

@end

@implementation ClothTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clothTableView.delegate = self;
    self.clothTableView.dataSource = self;
    
    Cloth * cloth = [[Cloth alloc]init];
    self.cloth = cloth;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0)
    {
        //Step1 : Cell creation and Reuse
        ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        //Step2 : Data Binding
        cell.clothTextField.placeholder = @"ClothID";
        self.clothIDTextField = cell.clothTextField;
        return cell;
    }
    else if(indexPath.row == 1)
    {
        //Step1 : Cell creation and Reuse
        ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        //Step2 : Data Binding
        cell.clothTextField.placeholder = @"Name";
        self.clothNameTextField = cell.clothTextField;
        return cell;
    }
    else if(indexPath.row == 2)
    {
        //Step1 : Cell creation and Reuse
        ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        //Step2 : Data Binding
        cell.clothTextField.placeholder = @"Price";
        self.clothPriceTextField = cell.clothTextField;
        return cell;
    }
    else if(indexPath.row == 3)
    {
        //Step1 : Cell creation and Reuse
        ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        //Step2 : Data Binding
        cell.clothTextField.placeholder = @"Made in Country";
        self.clothMadeCountryTextField = cell.clothTextField;
        return cell;
    }
    else if(indexPath.row == 4)
    {
        //Step1 : Cell creation and Reuse
        ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        //Step2 : Data Binding
        cell.clothTextField.placeholder = @"Material Code";
        self.clothMaterialCodeTextField = cell.clothTextField;
        return cell;
    }
    else
    {
        //Step1 : Cell creation and Reuse
        ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
        }
        //Step2 : Data Binding
        cell.clothTextField.placeholder = @"Material Name";
        self.clothMaterialNameTextField = cell.clothTextField;
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (IBAction)closeKeyBoardButton:(UIButton *)sender {
    [self.view endEditing:YES];
}

- (IBAction)addClothButton:(UIButton *)sender {
    self.cloth.productID = self.clothIDTextField.text.integerValue;
    self.cloth.productName = self.clothNameTextField.text;
    self.cloth.productPrice = self.clothPriceTextField.text.integerValue;
    self.cloth.productMadeCountry = self.clothMadeCountryTextField.text;
    
    NSArray * materialCodeArray = [self.clothMaterialCodeTextField.text componentsSeparatedByString:@","];
    NSArray * materialNameArray = [self.clothMaterialNameTextField.text componentsSeparatedByString:@","];
    
    self.clothMaterialArray = [[NSMutableArray alloc]init];
    
    for(int i = 0; i < materialCodeArray.count; i++)
    {
        NSInteger materialCode = [materialCodeArray[i] integerValue];
        NSString * materialName = materialNameArray[i];
        
        Material * material = [[Material alloc]initWithMaterialCode:materialCode materialName:materialName];
        [self.clothMaterialArray addObject:material];
    }
    self.cloth.material = self.clothMaterialArray;
    [self.clothTVCDelegate clothDidCreate:self.cloth];
    //Close this screen
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)closeClothButton:(UIButton *)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
