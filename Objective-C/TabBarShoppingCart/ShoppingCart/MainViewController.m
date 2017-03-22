//
//  MainViewController.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showAmount
{
        float amount = [self.mainDelegate mainDidSelect];
        self.totalAmountLabel.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", amount]];
}

@end
