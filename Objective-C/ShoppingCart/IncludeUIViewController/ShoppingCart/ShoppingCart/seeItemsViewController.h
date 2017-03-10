//
//  seeItemsViewController.h
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-10.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Product.h"

@interface seeItemsViewController : UIViewController<ViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextView *seeItemsTextView;

- (IBAction)closeButton:(UIButton *)sender;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (void)viewWillAppear:(BOOL)animated;
@end
