//
//  FMAnimator.h
//  CoolViewTransitions
//
//  Created by Fredrick Myers on 11/12/13.
//  Copyright (c) 2013 Fredrick Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresented) BOOL presenting;

@end
