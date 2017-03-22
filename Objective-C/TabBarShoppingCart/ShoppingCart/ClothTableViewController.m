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
    self.tableViewIDArray = @[@"ID", @"Name", @"Price", @"Made in Country", @"Material Code", @"Material Name"];
    self.cellTextFieldArray = [[NSMutableArray alloc] init];
    //TODO
    self.navigationController.navigationItem.title = @"sdfksadfk";
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
    //Step1 : Cell creation and Reuse
    ClothTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewID"];
    //every time you have to check!
    if(!cell)
    {
        cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewID"];
    }
    //Step2 : Data Binding
    cell.clothTextField.placeholder = self.tableViewIDArray[indexPath.row];
    //TODO
    self.cellTextFieldArray[indexPath.row] = cell.clothTextField;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
-(UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    HeaderUIView* headerView = [[HeaderUIView alloc] initWithFrame:frame];
    
    headerView.headerImageView.image = [UIImage imageNamed:@"cloth"];
    
    headerView.headerTitleLabel.text = @"Cloth";
    headerView.contentView.backgroundColor = [UIColor lightGrayColor];
    
    return headerView;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
    
}

-(UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    FooterUIView* footerView = [[FooterUIView alloc] initWithFrame:frame];
    
    //footerView.contentView.backgroundColor = [UIColor orangeColor];
    footerView.FooterDelegate = self;
    return footerView;
    
}

-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 100;
}
- (IBAction)closeKeyBoardButton:(UIButton *)sender {
    [self.view endEditing:YES];
}

- (void)buttonWasPressed {
    if(![self.cellTextFieldArray[1].text isEqualToString: @""])
    {
        NSArray * materialCodeArray;
        NSArray * materialNameArray;
        for(int i=0; i<self.tableViewIDArray.count; i++)
        {
            if(i == 0)
            {
                self.cloth.productID = self.cellTextFieldArray[i].text.integerValue;
            }
            else if(i == 1)
            {
                self.cloth.productName = self.cellTextFieldArray[i].text;
            }
            else if(i == 2)
            {
                self.cloth.productPrice = self.cellTextFieldArray[i].text.integerValue;
            }
            else if(i == 3)
            {
                self.cloth.productMadeCountry = self.cellTextFieldArray[i].text;
            }
            else if(i == 4)
            {
                materialCodeArray = [self.cellTextFieldArray[i].text componentsSeparatedByString:@","];
            }
            else
            {
                materialNameArray = [self.cellTextFieldArray[i].text componentsSeparatedByString:@","];
            }
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
            
            //Go back to main screen (push and pop)
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
//- (IBAction)closeClothButton:(UIButton *)sender {
//     [self.navigationController popViewControllerAnimated:YES];
//}
}
@end
