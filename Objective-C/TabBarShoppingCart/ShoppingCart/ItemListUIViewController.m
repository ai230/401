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
    
    self.productItemsArray = [[NSMutableArray alloc]init];
    //self.productItemsArray = [self.itemListVCDelegate itemListDidCreate];
    //[self fakeData];
}

- (void)viewWillAppear:(BOOL)animated
{
//    self.productItemsArray = [[NSMutableArray<Product*> alloc]init];
//    self.productItemsArray = [self.itemListVCDelegate itemListDidCreate];
//    self.totalAmountLabel.text = @"$100.01";
    
//    self.drinkArray = [[NSMutableArray alloc]init];
//    self.foodArray = [[NSMutableArray alloc]init];
//    self.clothArray = [[NSMutableArray alloc]init];
//    
//    for(int i = 0; i < productsArray.count; i++)
//    {
//        Product * product = [productsArray objectAtIndex:i];
//        if([product isMemberOfClass:[Drink class]])
//        {
//            [self.drinkArray addObject:product];
//        }
//        else if([product isMemberOfClass:[Food class]])
//        {
//            [self.foodArray addObject:product];
//        }
//        else if([product isMemberOfClass:[Cloth class]])
//        {
//            [self.clothArray addObject:product];
//        }
//    }
}

-(void)listDidSelect
{
    //doesn't work
    self.productItemsArray = [[NSMutableArray<Product*> alloc]init];
    self.productItemsArray = [self.itemListVCDelegate itemListDidCreate];
    //self.totalAmountLabel.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", amount]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)fakeData
//{
//    self.items = [[NSMutableArray<Item*> alloc] init];
//    
//    Item* p1 = [[Item alloc] initWithImageName:@"drink" desc:@"Pepsi"];
//    Item* p2 = [[Item alloc] initWithImageName:@"food" desc:@"Desk"];
//    Item* p3 = [[Item alloc] initWithImageName:@"cloth" desc:@"TV"];
//    Item* p4 = [[Item alloc] initWithImageName:@"tea-icon" desc:@"Laptop"];
//    Item* p5 = [[Item alloc] initWithImageName:@"catering-icon" desc:@"Cell Phone"];
//    Item* p6 = [[Item alloc] initWithImageName:@"coffee-takeaway-flat" desc:@"Coffee"];
//
//    
//    [self.items addObject:p1];
//    [self.items addObject:p2];
//    [self.items addObject:p3];
//    [self.items addObject:p4];
//    [self.items addObject:p5];
//    [self.items addObject:p6];
//    [self.items addObject:p1];
//    [self.items addObject:p2];
//    [self.items addObject:p3];
//    [self.items addObject:p4];
//    [self.items addObject:p5];
//    [self.items addObject:p6];
//    
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if(section==0)
    
        return self.productItemsArray.count;
//    else
//        return self.productItemsArray.count;
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
    
    //cell.customImageView.image = [UIImage imageNamed:p.imageName];
    
    cell.customLabel.text = p.productName;
    
    return cell;
}


-(UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    HeaderUIView* headerView = [[HeaderUIView alloc] initWithFrame:frame];
    
    //headerView.headerImageView.image = [UIImage imageNamed:@"atomix_ecommerce"];
    
    headerView.headerImageView.image = [UIImage imageNamed:@"Items List"];
    
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
