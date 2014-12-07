//
//  GCFirstViewController.h
//  GameCounter
//
//  Created by Nathan Carter on 8/8/13.
//  Copyright (c) 2013 Nathan Carter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCSecondViewController.h"
#import "GCGlobalVaribles.h"

@interface GCFirstViewController : UIViewController
{
    GCGlobalVaribles *globalVaribles;
}

- (IBAction)levelStepper:(UIStepper *)sender;
- (IBAction)equipmentStepper:(UIStepper *)sender;
- (IBAction)cursesStepper:(UIStepper *)sender;
- (void) updateCombatScore;

//@property (nonatomic, retain) GCSecondViewController *secondViewController;

@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *equipmentLabel;
@property (weak, nonatomic) IBOutlet UILabel *cursesLabel;

@property (weak, nonatomic) IBOutlet UILabel *combatStrength;

@property int level;
@property int equipment;
@property int curses;
@property int combatScore;

@end
