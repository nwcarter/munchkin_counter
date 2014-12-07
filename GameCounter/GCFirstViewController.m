//
//  GCFirstViewController.m
//  GameCounter
//
//  Created by Nathan Carter on 8/8/13.
//  Copyright (c) 2013 Nathan Carter. All rights reserved.
//

#import "GCFirstViewController.h"
#import "GCGlobalVaribles.h"

@interface GCFirstViewController ()

@end

@implementation GCFirstViewController

@synthesize combatScore;
@synthesize combatStrength;

@synthesize level;
@synthesize levelLabel;

@synthesize equipment;
@synthesize equipmentLabel;

@synthesize curses;
@synthesize cursesLabel;

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    globalVaribles = [GCGlobalVaribles getInstance];
    globalVaribles.characterAttack = 1;
    
    level = 1;
    equipment = 0;
    curses = 0;
    combatScore = level;
    
    levelLabel.layer.borderColor = [UIColor blackColor].CGColor;
    levelLabel.layer.borderWidth = 2.0;
    
    equipmentLabel.layer.borderColor = [UIColor blackColor].CGColor;
    equipmentLabel.layer.borderWidth = 2.0;
    
    cursesLabel.layer.borderColor = [UIColor blackColor].CGColor;
    cursesLabel.layer.borderWidth = 2.0;

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)levelStepper:(UIStepper *)sender
{
    level = sender.value;
    [levelLabel setText:[NSString stringWithFormat:@"%i", level]];
    [self updateCombatScore];
}

- (IBAction)equipmentStepper:(UIStepper *)sender
{
    equipment = sender.value;
    [equipmentLabel setText:[NSString stringWithFormat:@"%i", equipment]];
    [self updateCombatScore];
}

- (IBAction)cursesStepper:(UIStepper *)sender
{
    curses = sender.value;
    [cursesLabel setText:[NSString stringWithFormat:@"%i", curses]];
    [self updateCombatScore];
}
- (void) updateCombatScore
{
    combatScore = level + equipment + curses;
    globalVaribles.characterAttack = combatScore;
    
    [combatStrength setText:[NSString stringWithFormat:@"%i", combatScore]];
}
@end
