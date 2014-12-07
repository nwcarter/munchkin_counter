//
//  GCSecondViewController.h
//  GameCounter
//
//  Created by Nathan Carter on 8/8/13.
//  Copyright (c) 2013 Nathan Carter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCFirstViewController.h"
#import "GCGlobalVaribles.h"

@interface GCSecondViewController : UIViewController
{
    GCGlobalVaribles *globalVaribles;
    int playerCombatScore;
    int monsterScore;
}

- (IBAction)playerStepper:(UIStepper *)sender;
- (IBAction)monsterStepper:(UIStepper *)sender;
- (void) setScoreLabel;
- (void) setMessage;

@property (weak, nonatomic) IBOutlet UIStepper *playerStepper;
@property int playerCombatScore;
@property int monsterScore;

@property (weak, nonatomic) IBOutlet UILabel *combatScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterLabel;
@property (weak, nonatomic) IBOutlet UILabel *message;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end
