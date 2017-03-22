//
//  MainViewController.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainDelegate
@required
-(float)mainDidSelect;
@optional
@end

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (weak, nonatomic) id<MainDelegate> mainDelegate;

- (void)showAmount;

@end
