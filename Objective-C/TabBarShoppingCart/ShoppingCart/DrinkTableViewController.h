//
//  DrinkTableViewController.h
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-13.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Drink.h"
#import "DrinkTableViewCell.h"
#import "HeaderUIView.h"
#import "FooterUIView.h"

@protocol DrinkTVCDelegate
@required
//Method Call-back function
- (void)drinkDidCreate:(Drink*)drink;
@optional
@end

@interface DrinkTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource, FooterDelegate>

@property (strong, nonatomic) IBOutlet UITableView *drinkTableView;
@property (weak, nonatomic) id<DrinkTVCDelegate> drinkTVCDelegate;
@property (strong, nonatomic) NSArray * tableViewIDArray;
@property (strong, nonatomic) NSMutableArray<UITextField*>* cellTextFieldArray;
@property (strong, nonatomic) Drink * drink;

@end
