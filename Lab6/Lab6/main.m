//
//  main.m
//  Lab6
//
//  Created by Bianca Campos on 2018-09-11.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean playing = true;
        GameController *player1 = [GameController new];
        
        while (playing) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n'roll' to roll the dice.\n'hold' to hold the dice.\n'reset' to unhold the dices.\n'display' to display the currentdeck and score \n'quit' to exit the game."];
            // roll, hold, reset, display, quit
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
            }
            if ([input isEqualToString:@"hold"]) {
                NSString *faceVal = [InputHandler getUserInputWithLength:10 withPrompt:@"Enter the face value to hold: "];
                [player1 holdDie: [faceVal integerValue]];
                [player1 displayCurrentDeck];
            }
            if ([input isEqualToString:@"reset"]) {
                [player1 resetDice];
                [player1 displayCurrentDeck];
            }
            if ([input isEqualToString:@"display"]) {
                [player1 displayScore];
            }
            if ([input isEqualToString:@"quit"]) {
                playing = false;
                break;
            }
        }
        
    }
    return 0;
}
