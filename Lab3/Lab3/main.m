//
//  main.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        int countRight = 0;
        int countWrong = 0;
        while (gameOn) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer= [InputHandler getUserInputWithLength:10 withPrompt: [q question]];
//            NSString *userAnswer = getUserInput(10, [q question]); //getter or use q.question
            NSInteger userAnsInt = [userAnswer integerValue];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                countRight++;
                setRight = countRight;
            } else if ([userAnswer isEqualToString:@"quit"]){
                gameOn = NO;
                countWrong++;
                setWrong = countWrong;
            }else{
                NSLog(@"Wrong!");
            }
        }
//        NSLog(@"%@", score);
    }
    return 0;
}
