//
//  main.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        InputHandler *inputHandler = [InputHandler new];
        ScoreKeeper *myScore = [ScoreKeeper new];
        QuestionManager *myManager = [QuestionManager new];
        QuestionFactory *myQuestion = [QuestionFactory new];
        
        while (gameOn) {
            Question *q = [myQuestion generateRandomQuestion];
            [[myManager questions] addObject: q];
            NSString *userAnswer= [InputHandler getUserInputWithLength:10 withPrompt: [q question]];
            
            NSInteger userAnsInt = [userAnswer integerValue];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                [myScore setRight: [myScore right] + 1];
                NSLog([myManager timeOutput]);
            } else if ([userAnswer isEqualToString:@"quit"]){
                gameOn = NO;
               
            }else{
                NSLog(@"Wrong!");
                [myScore setWrong: [myScore wrong] + 1];
                NSLog([myManager timeOutput]);
            }
            NSLog([myScore score]);
        }
    }
    return 0;
}
