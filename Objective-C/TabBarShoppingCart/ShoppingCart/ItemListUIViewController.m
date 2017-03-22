//
//  ItemListUIViewController.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ItemListUIViewController.h"

@interface ItemListUIViewController ()

//@property (strong, nonatomic) NSMutableArray<Item*>* items;

@end

@implementation ItemListUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.itemListTableView.delegate = self;
    self.itemListTableView.dataSource = self;
    
    self.productItemsArray = [[NSMutableArray<Product*> alloc]init];
    
}

-(void)listDidSelect
{
    self.productItemsArray = [self.itemListVCDelegate itemListDidCreate];
    [self.itemListTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.productItemsArray.count;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomUITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CustomUITableViewCellID"];
    
    if(!cell)
    {
        cell = [[CustomUITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CustomUITableViewCellID"];
    }
    
    Product* p = [self.productItemsArray objectAtIndex:indexPath.row];
    
    if([p isMemberOfClass:[Cloth class]])
    {
        cell.customImageView.image = [UIImage imageNamed:@"cloth"];
    }
    else if([p isMemberOfClass:[Drink class]])
    {
        cell.customImageView.image = [UIImage imageNamed:@"drink"];
    }
    else if([p isMemberOfClass:[Food class]])
    {
        cell.customImageView.image = [UIImage imageNamed:@"food"];
    }
    cell.customLabel.text = p.productName;
    cell.customPriceLabel.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%0.2f", p.productPrice]];
    return cell;
}


-(UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    HeaderUIView* headerView = [[HeaderUIView alloc] initWithFrame:frame];
    
    //headerView.headerImageView.image = [UIImage imageNamed:@"atomix_ecommerce"];
    
    headerView.headerTitleLabel.text = @"Item List";
    
    headerView.contentView.backgroundColor = [UIColor lightGrayColor];
    
    return headerView;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 80;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
