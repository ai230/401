//
//  FoodTableViewController.h
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-14.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Food.h"
#import "FoodTableViewCell.h"

@protocol FoodTVCDelegate

@required
- (void)foodDidCreate:(Food*)food;
@optional
@end

@interface FoodTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id<FoodTVCDelegate> foodTVCDelegate;
@property (strong, nonatomic) IBOutlet UITableView *foodTableView;

@property (strong, nonatomic) Food* food;
@property (strong, nonatomic) NSArray * foodTableViewIDArray;
@property (strong, nonatomic) NSMutableArray<UITextField*>* cellTextFieldArray;

//@property (weak, nonatomic) UITextField *foodIDTextField;
//@property (weak, nonatomic) UITextField *foodNameTextField;
//@property (weak, nonatomic) UITextField *foodPriceTextField;
//@property (weak, nonatomic) UITextField *foodMadeCountryTextField;
//@property (weak, nonatomic) UITextField *foodSizeTextField;
//@property (weak, nonatomic) UITextField *foodCalorieTextField;
//@property (weak, nonatomic) UITextField *foodIngredientsTextField;

- (IBAction)closeKeyBoardButton:(UIButton *)sender;
- (IBAction)addFoodButton:(UIButton *)sender;
- (IBAction)closeFoodButton:(UIButton *)sender;

@end
