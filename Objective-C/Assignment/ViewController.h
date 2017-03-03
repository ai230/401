//
//  ViewController.h
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shape.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Square.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UIButton *getRectangleLengthWidth;
@property (weak, nonatomic) IBOutlet UIButton *getSquareLength;
@property (weak, nonatomic) IBOutlet UIButton *getCircleRadius;
@property (weak, nonatomic) IBOutlet UITextField *rectangleLength;
@property (weak, nonatomic) IBOutlet UITextField *rectangleWidth;
@property (weak, nonatomic) IBOutlet UITextField *squareLength;
@property (weak, nonatomic) IBOutlet UITextField *circleRadius;
@property (weak, nonatomic) IBOutlet UILabel *TotalAreaLabel;
@property (weak, nonatomic) IBOutlet UILabel *TotalCircumferenceLabel;


@end

