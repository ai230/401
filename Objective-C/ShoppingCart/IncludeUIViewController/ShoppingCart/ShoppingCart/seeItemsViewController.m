//
//  seeItemsViewController.m
//  ShoppingCart
//
//  Created by AiYamamoto on 2017-03-10.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "seeItemsViewController.h"

@interface seeItemsViewController ()

@end

@implementation seeItemsViewController

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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ((ViewController*)segue.destinationViewController).delegate = self;
}

- (void)itemsDidCreate:(ShoppingCart*)shoppingcart
{
    [shoppingcart printPurchaseNameItems];
}

- (void)viewWillAppear:(BOOL)animated
{
    self itemsDidCreate:
//    NSString * firstname = self.firstnameTextField.text;
//    NSString * lastname = self.lastnameTextField.text;
//    
//    NSString * sentence = [[[@"Hello " stringByAppendingString:firstname] stringByAppendingString:@" "] stringByAppendingString:lastname];
//    
//    self.sentenceTextField.text = sentence;
}
- (IBAction)closeButton:(UIButton *)sender {
        [self dismissViewControllerAnimated:YES completion:nil];
}
@end
