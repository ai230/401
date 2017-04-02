//
//  FridgeCollectionViewController.h
//  FinalProject
//
//  Created by AiYamamoto on 2017-03-30.
//  Copyright © 2017 CICCCa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FridgeCollectionViewCell.h"
#import "Product.h"

@protocol FridgeItemCVDelegate

-(NSMutableArray<Product*>*)fridgeItemCVDidCreate;

@end

@interface FridgeCollectionViewController : UICollectionViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *fridgeCollectionView;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@property(weak,nonatomic)id<FridgeItemCVDelegate> fridgeItemCVDelegate;

@property (strong,nonatomic) NSMutableArray<Product*>* productArray;

-(void)fridgeCVDidSelect;

@end
