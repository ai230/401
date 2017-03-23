//
//  Footer2UIView.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-22.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Footer2Delegate
@end

@interface Footer2UIView : UIView

@property (weak, nonatomic) id<Footer2Delegate> Footer2Delegate;
@property (weak, nonatomic) IBOutlet UILabel *contentView;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;

@end
