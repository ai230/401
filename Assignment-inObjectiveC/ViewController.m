//
//  ViewController.m
//  Inheritance
//
//  Created by AiYamamoto on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) int rectangleCount;
@property (nonatomic) int squareCount;
@property (nonatomic) int circleCount;
@property (nonatomic) int counter;
@property (nonatomic) float totalArea;
@property (nonatomic) float totalCircumference;
@property (strong, nonatomic) NSMutableArray<Shape*>* shapes;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.shapes = [[NSMutableArray alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getRectangleLengthAndWidthButton:(id)sender {
    if([self.rectangleLength.text isEqualToString:@""] || [self.rectangleWidth.text isEqualToString:@""])
    {

    }
    else
    {
        float rectangleLength = self.rectangleLength.text.integerValue;
        float rectanglewidth = self.rectangleWidth.text.integerValue;
        [self.shapes addObject:[[Rectangle alloc] initWithLength:rectangleLength width:rectanglewidth]];
        self.rectangleLength.text = @"";
        self.rectangleWidth.text = @"";
    }
    self.counter++;
}

- (IBAction)getSquareLengthButton:(id)sender {
    if([self.squareLength.text isEqualToString:@""])
    {
        
    }
    else
    {
        float squareLength = self.squareLength.text.integerValue;
        [self.shapes addObject:[[Square alloc] initWithLength:squareLength]];
        self.squareLength.text = @"";
    }
    self.counter++;
}

- (IBAction)getCircleRadiusButton:(id)sender {
    if ([self.circleRadius.text isEqualToString:@""])
    {
        
    }
    else
    {
        float circleRadius = self.circleRadius.text.integerValue;
        [self.shapes addObject:[[Circle alloc] initWithLength:circleRadius]];
        self.circleRadius.text = @"";
    }
    self.counter++;
}


- (IBAction)calculateButtonAction:(id)sender {
    for(int i = 0; i < self.shapes.count; i++)
    {
        int area;
        int circumference;
        Shape * sh = [self.shapes objectAtIndex:i];
        if([sh isMemberOfClass:[Rectangle class]])
        {
            area = [((Rectangle*)sh)area];
            circumference = [((Rectangle*)sh)circumference];
            self.totalArea = self.totalArea + area;
            self.totalCircumference = self.totalCircumference + circumference;
        }
        else if([sh isMemberOfClass:[Square class]])
        {
            area = [((Square*)sh)area];
            circumference = [((Square*)sh)circumference];
            self.totalArea = self.totalArea + area;
            self.totalCircumference = self.totalCircumference + circumference;
        }
        else if([sh isMemberOfClass:[Circle class]])
        {
            area = [((Circle*)sh)area];
            circumference = [((Circle*)sh)circumference];
            self.totalArea = self.totalArea + area;
            self.totalCircumference = self.totalCircumference + circumference;
        }
        else
        {
            NSLog(@"???\n");
        }
    }
    self.TotalAreaLabel.text = [NSString stringWithFormat:@"%.2f",self.totalArea];
    self.TotalCircumferenceLabel.text = [NSString stringWithFormat:@"%.2f",self.totalCircumference];
}

@end
