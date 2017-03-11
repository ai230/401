//
//  seeItemsViewController.m
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-10.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "SeeItemsViewController.h"

@interface SeeItemsViewController ()

@end

@implementation SeeItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewWillAppear:(BOOL)animated
{
    NSMutableArray * productNameArray = [[NSMutableArray alloc]init];
    productNameArray = [self.seedVCDelegate seeItemsDidCreate];
    
    self.seeItemsTextView.text = [productNameArray componentsJoinedByString:@","];
}

- (IBAction)closeButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
