//
//  GCAppDelegate.h
//  GameCounter
//
//  Created by Nathan Carter on 8/8/13.
//  Copyright (c) 2013 Nathan Carter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCFirstViewController.h"
#import "GCSecondViewController.h"

@interface GCAppDelegate : UIResponder <UIApplicationDelegate>
{
    GCFirstViewController *firstViewController;
    GCSecondViewController *secondViewController;
}

@property (strong, nonatomic) GCFirstViewController *firstViewController;
@property (strong, nonatomic) GCSecondViewController *secondViewController;
@property (strong, nonatomic) UIWindow *window;

@end
