//
//  ClothTableViewController.h
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-14.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Cloth.h"
#import "Material.h"

#import "ClothTableViewCell.h"
#import "HeaderUIView.h"
#import "FooterUIView.h"

@protocol ClothTVCDelegate

@required
- (void)clothDidCreate:(Cloth*)cloth;
@optional
@end

@interface ClothTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource,FooterDelegate>

@property (weak, nonatomic) id<ClothTVCDelegate> clothTVCDelegate;
@property (strong, nonatomic) IBOutlet UITableView *clothTableView;
@property (strong, nonatomic) NSArray * tableViewIDArray;
@property (strong, nonatomic) NSMutableArray<UITextField*>* cellTextFieldArray;
@property (strong, nonatomic) Cloth * cloth;
@property (strong, nonatomic) NSMutableArray* clothMaterialArray;

@end
