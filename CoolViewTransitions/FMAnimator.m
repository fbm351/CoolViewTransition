//
//  FMAnimator.m
//  CoolViewTransitions
//
//  Created by Fredrick Myers on 11/12/13.
//  Copyright (c) 2013 Fredrick Myers. All rights reserved.
//

#import "FMAnimator.h"

@implementation FMAnimator

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];

    if (self.presenting) {
        fromViewController.view.userInteractionEnabled = NO;
        [[transitionContext containerView] addSubview:fromViewController.view];
        [[transitionContext containerView] addSubview:toViewController.view];
        
        __block CGRect startingFrame = toViewController.view.frame;
        startingFrame.origin.y = CGRectGetHeight(startingFrame);
        toViewController.view.frame = startingFrame;
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            startingFrame.origin.y -= 150;
            toViewController.view.frame = startingFrame;
        } completion:^(BOOL finished){
            [transitionContext completeTransition:YES];
        }];
    }
    else {
        toViewController.view.userInteractionEnabled = YES;
        
        [[transitionContext containerView] addSubview:toViewController.view];
        [[transitionContext containerView] addSubview:fromViewController.view];
        
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            __block CGRect frame = fromViewController.view.frame;
            frame.origin.y += 150;
            fromViewController.view.frame = frame;
        } completion:^(BOOL finished){
            [transitionContext completeTransition:YES];
        }];
        
    }
    
}

@end
