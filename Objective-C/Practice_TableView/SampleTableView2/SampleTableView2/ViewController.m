//
//  ViewController.m
//  SampleTableView
//
//  Created by AiYamamoto on 2017-03-10.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //This is my delegate
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    self.itemsForSection0 = [@[@"Bob", @"Sam" ,@"Peter"] mutableCopy];
    self.itemsForSection1 =[@[@"Canada", @"USA", @"Germany", @"Italy"] mutableCopy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//those two are for Delegate to TableView
//what imformation would you like to show?
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //section[i] - indexpath.row[i]
    if(indexPath.section == 0)
    {
        //Step1 : Cell creation and Reuse
        ImageTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ImageTableViewID"];
        //every time you have to check!
        if(!cell)
        {
            cell = [[ImageTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ImageTableViewID"];
        }
        
        //Step2 : Data Binding
        cell.myImage.image = [UIImage imageNamed:@"food"];
        cell.myLabel.text = [self.itemsForSection0 objectAtIndex:indexPath.row];
        
        return cell;
    }
    else//section == 1 or 2
    {
        //Step1 : Cell creation and Reuse
        TextFeildTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"TextFieldTableViewID"];
        
        if(!cell)
        {
            cell = [[TextFeildTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TextFieldTableViewID"];
        }
        //Step2 : Data Binding
        cell.myTextField.text = [self.itemsForSection1 objectAtIndex:indexPath.row];
        return cell;
    }
}
//Number of section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;//2 section
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0)
    {
        return 128;
    }
    else//1 section
    {
        return 91;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section==0) {
        //return 5;
        return self.itemsForSection0.count;
    } else {
        //return 7;
        return self.itemsForSection1.count;
    }
}
@end
