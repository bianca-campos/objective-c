//
//  GameController.m
//  Lab6
//
//  Created by Bianca Campos on 2018-09-11.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "GameController.h"

#define MAX_ROLL 5

//private property
@interface GameController()
{
    @private int rollCount;
}
@end

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
    }
    return self;
}

- (void) roll{
    // if I have more than 1 roll count left, I can roll all 5 dice in the array
    //except for the ones that are held by user
    if (rollCount > 0) {
        for (Dice *die in _displayDice) {
            if (![die held]) {
                [die roll];
            }
        }
        rollCount--;
        NSLog(@"Remaining Rolls: %d", rollCount);
    } else{
        NSLog(@"You can't roll more than %d times.", MAX_ROLL);
    }
}

-(void) displayCurrentDeck{
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ ", [die description]];
    }
    NSLog(@"%@", currentDeck);
}

-(void) holdDie: (NSUInteger) die{
    for (Dice *die in _displayDice) {
    // 1. Check if the die is already held
        if (![die held]) {
        // 2. change the held property of the die
            [die held];
        }
    }
}

-(void) resetDice{
    // 1. iterate through each die, unhold every die
    for (Dice *die in _displayDice){
        if ([die held]) {
            // 2. change the held property of the die
            die.held = false;
        }
    }
}

-(void) holdAll{
    // 1. iterate through each die, hold every die
    for (Dice *die in _displayDice){
        if (![die held]) {
            // 2. change the held property of the die
            [die held];
        }
}
}

-(void) displayScore{
    // 1. check if the game is over (rollCount)
    // - game over
    // - print game over and currentDeck and the score (the sum of faceValues)
    if (rollCount == 0){
        NSLog(@"Game Over");
        [self displayCurrentDeck];
    }else{
    // 2. not over
    // - print the current deck and the score (the sume of faceValues)
        [self displayCurrentDeck];
}
}


@end
