//
//  FooterUIView.h
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FooterDelegate
@required
- (void)buttonWasPressed;
@optional
@end

@interface FooterUIView : UIView

@property (weak, nonatomic) id<FooterDelegate> FooterDelegate;
@property (strong, nonatomic) IBOutlet UIView *contentView;

- (IBAction)doneButton:(id)sender;

@end
