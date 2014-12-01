//
//  Animations.h
//  DrawAnimations
//
//  Created by gitBurning on 14/12/1.
//  Copyright (c) 2014年 gitBurning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface Animations : NSObject

+(void)cirCleAnimationWithLayerWithView:(UIView*)view isRemovedOnCompletion:(BOOL)removedOnCompletion;
-(void)initCirCleAnimationWithLayerWithView:(UIView*)view isRemovedOnCompletion:(BOOL)removedOnCompletion ;
@end
