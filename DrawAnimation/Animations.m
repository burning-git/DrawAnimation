//
//  Animations.m
//  DrawAnimations
//
//  Created by gitBurning on 14/12/1.
//  Copyright (c) 2014年 gitBurning. All rights reserved.
//

#import "Animations.h"

@implementation Animations
+(void)cirCleAnimationWithLayerWithView:(UIView *)view isRemovedOnCompletion:(BOOL)removedOnCompletion
{
    
    CAKeyframeAnimation *animation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    CGMutablePathRef ovalfromarc = CGPathCreateMutable();
    
    CGAffineTransform t2=view.layer.affineTransform;
    
    
     CGPathAddArc(ovalfromarc,&t2 , kScreenWidth/2, kScreenHeight/2, kScreenWidth/2-50, 0, M_PI*2, YES);
    
    [animation setPath:ovalfromarc];
    
    [animation setDuration:2.0];
    
    animation.repeatCount=1;
    if (removedOnCompletion) {
        animation.autoreverses = NO;//默认就是NO，设置成Yes之后下面fillMode就不起作用了
        animation.fillMode = kCAFillModeForwards;
        animation.removedOnCompletion = NO;
    }
    [view.layer addAnimation:animation forKey:@"position"];
    
}
-(void)initCirCleAnimationWithLayerWithView:(UIView *)view isRemovedOnCompletion:(BOOL)removedOnCompletion{
    CAKeyframeAnimation *animation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    CGMutablePathRef ovalfromarc = CGPathCreateMutable();
    
    CGAffineTransform t2=view.layer.affineTransform;
    
    
    /**
     *  可以修改 动画的 角度
     */
    CGPathAddArc(ovalfromarc,&t2 , kScreenWidth/2, kScreenHeight/2, kScreenWidth/2-50, 0, M_PI*2, NO);
    
    [animation setPath:ovalfromarc];
    
    [animation setDuration:4.0];
    
    animation.repeatCount=0;
    if (removedOnCompletion) {
        animation.autoreverses = NO;//默认就是NO，设置成Yes之后下面fillMode就不起作用了
        animation.fillMode = kCAFillModeForwards;
        animation.removedOnCompletion = NO;
    }
    [view.layer addAnimation:animation forKey:@"position"];
}

@end
