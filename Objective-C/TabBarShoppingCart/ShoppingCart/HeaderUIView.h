//
//  HeaderUIView.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderUIView : UIView

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *headerTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;

@end
