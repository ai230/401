//
//  Footer2UIView.m
//  TabBarShoppingCart
//
//  Created by AiYamamoto on 2017-03-22.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Footer2UIView.h"

@implementation Footer2UIView
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
    //self.contentView.backgroundColor = [UIColor greenColor];
}

@end
