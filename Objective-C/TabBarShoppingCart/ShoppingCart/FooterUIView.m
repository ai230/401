//
//  FooterUIView.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-18.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "FooterUIView.h"

@implementation FooterUIView


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
    [[NSBundle mainBundle] loadNibNamed:@"Footer" owner:self options:NULL];
    
    [self addSubview:self.contentView];
    
    self.contentView.frame = self.bounds;
    
    self.contentView.backgroundColor = [UIColor greenColor];
    
}

- (IBAction)doneButton:(id)sender {
    [self.FooterDelegate buttonWasPressed];
    //[self.FooterDelegate drinkDidCreate:self.drink];
    //[button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)cancelButton:(id)sender {
}
@end
