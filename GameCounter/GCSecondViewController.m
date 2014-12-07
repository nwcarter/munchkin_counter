//
//  GCSecondViewController.m
//  GameCounter
//
//  Created by Nathan Carter on 8/8/13.
//  Copyright (c) 2013 Nathan Carter. All rights reserved.
//

#import "GCSecondViewController.h"

@interface GCSecondViewController ()

@end

@implementation GCSecondViewController

@synthesize playerStepper;
@synthesize playerCombatScore;
@synthesize monsterScore;
@synthesize combatScoreLabel;
@synthesize monsterLabel;
@synthesize message;
@synthesize scoreLabel;

- (void)viewDidLoad
{
    
    globalVaribles = [GCGlobalVaribles getInstance];
    monsterScore = 0;
    playerCombatScore = globalVaribles.characterAttack;
    playerStepper.value = playerCombatScore;
    [combatScoreLabel setText:[NSString stringWithFormat:@"%i", playerCombatScore]];
    [self setScoreLabel];
    [self setMessage];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated
{
    playerCombatScore = globalVaribles.characterAttack;
    playerStepper.value = playerCombatScore;
    [combatScoreLabel setText:[NSString stringWithFormat:@"%i", playerCombatScore]];
    [self setScoreLabel];
    [self setMessage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playerStepper:(UIStepper *)sender
{
    playerCombatScore = sender.value;
    [combatScoreLabel setText:[NSString stringWithFormat:@"%i", playerCombatScore]];
    [self setScoreLabel];
    [self setMessage];
}

- (IBAction)monsterStepper:(UIStepper *)sender
{
    monsterScore = sender.value;
    [monsterLabel setText:[NSString stringWithFormat:@"%i", monsterScore]];
    [self setScoreLabel];
    [self setMessage];
}
- (void) setScoreLabel
{
    [scoreLabel setText:[NSString stringWithFormat:@"%i to %i", playerCombatScore, monsterScore]];
}
- (void) setMessage
{
    if (playerCombatScore > monsterScore)
    {
        [message setText:[NSString stringWithFormat:@"You will win."]];
    }
    else
    {
        [message setText:[NSString stringWithFormat:@"You will lose."]];

    }
}
@end
