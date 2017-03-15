//
//  ItemsListTableViewCell.h
//  ShoppingCartTableView
//
//  Created by AiYamamoto on 2017-03-12.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemsListTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView * drinkImageCell;
@property (weak, nonatomic) IBOutlet UILabel *drinkNameLabelCell;
@property (weak, nonatomic) IBOutlet UILabel *drinkAmountLabelCell;
@property (weak, nonatomic) IBOutlet UIImageView *foodImageCell;
@property (weak, nonatomic) IBOutlet UILabel *foodNameLabelCell;
@property (weak, nonatomic) IBOutlet UILabel *foodAmountLabelCell;
@property (weak, nonatomic) IBOutlet UILabel *clothNameLabelCell;
@property (weak, nonatomic) IBOutlet UIImageView *clothImageCell;
@property (weak, nonatomic) IBOutlet UILabel *clothAmountLabelCell;
@property (weak, nonatomic) IBOutlet UILabel *clothMadeCountryLabel;
@property (weak, nonatomic) IBOutlet UIView *clothMaterialsLabel;
@end
