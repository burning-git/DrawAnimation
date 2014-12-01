//
//  ViewController.m
//  DrawAnimation
//
//  Created by gitBurning on 14/12/1.
//  Copyright (c) 2014年 gitBurning. All rights reserved.
//

#import "ViewController.h"
#import "Animations.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *animationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Animations *ami=[[Animations alloc] init];
    
    [ami initCirCleAnimationWithLayerWithView:self.animationView isRemovedOnCompletion:YES];
    
    /**
     *  加一层 背景
     */
    UIBezierPath *path=[UIBezierPath bezierPath];
    
    CGRect rect=[UIScreen mainScreen].applicationFrame;
    
    int value = (arc4random() % 2);
    
    [path addArcWithCenter:CGPointMake(rect.size.width/2,rect.size.height/2) radius:rect.size.width/2-50 startAngle:0 endAngle:2*M_PI clockwise:value];
    CAShapeLayer*  arcLayer=[CAShapeLayer layer];
    arcLayer.path=path.CGPath;//46,169,230
    arcLayer.fillColor=[UIColor colorWithRed:46.0/255.0 green:169.0/255.0 blue:230.0/255.0 alpha:1].CGColor;
    arcLayer.strokeColor=[UIColor colorWithWhite:1 alpha:0.7].CGColor;
    arcLayer.lineWidth=3;
    arcLayer.frame=self.view.frame;
    [self.view.layer insertSublayer:arcLayer atIndex:0];
    
    self.view.backgroundColor=[UIColor grayColor];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
