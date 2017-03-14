//
//  seeItemsViewController.h
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-10.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"

@protocol SeeItemsVCDelegate

@required
//Method Call-back function
- (NSMutableArray*)seeItemsDidCreate;
@optional
@end

@interface SeeItemsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *seeItemsTextView;
@property (strong, nonatomic) NSMutableArray * productItemsArray;
@property (weak, nonatomic) id<SeeItemsVCDelegate> seedVCDelegate;

- (IBAction)closeButton:(UIButton *)sender;
- (void)viewWillAppear:(BOOL)animated;
@end
