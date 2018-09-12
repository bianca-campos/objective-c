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
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:@"\n'roll' to roll the dice.\n'quit' to exit the game"];
            // roll, hold, reset, display, quit
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
            }
            if ([input isEqualToString:@"quit"]) {
                playing = false;
                break;
            }
        }
        
    }
    return 0;
}
