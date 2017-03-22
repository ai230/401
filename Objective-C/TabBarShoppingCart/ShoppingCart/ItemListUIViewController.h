//
//  ItemListUIViewController.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
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
@property (strong, nonatomic) NSMutableArray<Product*>* productItemsArray;
@property (weak, nonatomic) id<itemListVCDelegate> itemListVCDelegate;

-(void)listDidSelect;

@end
