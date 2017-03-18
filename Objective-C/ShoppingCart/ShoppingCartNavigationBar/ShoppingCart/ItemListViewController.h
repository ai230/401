//
//  ItemListViewController.h
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-12.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemsListTableViewCell.h"

#import "Product.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"

@protocol itemListVCDelegate

@required
//Method Call-back function
- (NSMutableArray<Product*>*)itemListDidCreate;
@optional
@end

@interface ItemListViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id<itemListVCDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@property (strong, nonatomic) NSMutableArray<Product*>* drinkArray;
@property (strong, nonatomic) NSMutableArray<Product*>* foodArray;
@property (strong, nonatomic) NSMutableArray<Product*>* clothArray;
@property (strong, nonatomic) NSMutableArray * productItemsArray;
@property (weak, nonatomic) id<itemListVCDelegate> itemListVCDelegate;

- (void)viewWillAppear:(BOOL)animated;
- (IBAction)closeButton:(UIButton *)sender;

@end
