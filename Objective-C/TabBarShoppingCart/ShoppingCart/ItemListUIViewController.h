//
//  ItemListUIViewController.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
#import "CustomUITableViewCell.h"
#import "HeaderUIView.h"
#import "FooterUIView.h"

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

@interface ItemListUIViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *itemListTableView;
//@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
//@property (strong, nonatomic) NSMutableArray<Product*>* drinkArray;
//@property (strong, nonatomic) NSMutableArray<Product*>* foodArray;
//@property (strong, nonatomic) NSMutableArray<Product*>* clothArray;

@property (strong, nonatomic) NSMutableArray<Product*>* productItemsArray;
@property (weak, nonatomic) id<itemListVCDelegate> itemListVCDelegate;

- (void)viewWillAppear:(BOOL)animated;
//-(void)fakeData;
-(void)listDidSelect;
@end
