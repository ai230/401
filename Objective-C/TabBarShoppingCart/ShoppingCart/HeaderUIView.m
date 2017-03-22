//
//  HeaderUIView.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "HeaderUIView.h"

@implementation HeaderUIView

-(instancetype) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        [self ourInitializer];
    }
    return self;
}

-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        [self ourInitializer];
    }
    return self;
}

-(void) ourInitializer
{
    [[NSBundle mainBundle] loadNibNamed:@"Header" owner:self options:NULL];
    [self addSubview:self.contentView];
    self.contentView.frame = self.bounds;
    //self.contentView.backgroundColor = [UIColor lightGrayColor];
    //self.headerTitleLabel.text = @"Drink";
}

- (IBAction)closeKeyboard:(id)sender {
    [self.contentView endEditing:YES];
}

@end
