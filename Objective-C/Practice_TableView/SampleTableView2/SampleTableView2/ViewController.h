//
//  ViewController.h
//  SampleTableView
//
//  Created by AiYamamoto on 2017-03-10.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageTableViewCell.h"
#import "TextFeildTableViewCell.h"

@interface ViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
//data sourses
@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForSection0;
@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForSection1;

@end

