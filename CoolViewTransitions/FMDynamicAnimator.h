//
//  FMDynamicAnimator.h
//  CoolViewTransitions
//
//  Created by Fredrick Myers on 11/13/13.
//  Copyright (c) 2013 Fredrick Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMDynamicAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresented) BOOL presenting;

@end
