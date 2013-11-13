//
//  FMViewController.m
//  CoolViewTransitions
//
//  Created by Fredrick Myers on 11/12/13.
//  Copyright (c) 2013 Fredrick Myers. All rights reserved.
//

#import "FMViewController.h"
#import "FMMenuViewController.h"
#import "FMAnimator.h"
#import "FMDynamicAnimator.h"

@interface FMViewController ()

@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"options"]) {
        FMMenuViewController *menuViewController = (FMMenuViewController *)segue.destinationViewController;
        menuViewController.transitioningDelegate = self;
        menuViewController.modalPresentationStyle = UIModalPresentationCustom;
        
    }
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    FMDynamicAnimator *animator = [[FMDynamicAnimator alloc] init];
    animator.presenting = YES;
    return animator;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    FMDynamicAnimator *animator = [[FMDynamicAnimator alloc] init];
    return animator;
}


    


@end
