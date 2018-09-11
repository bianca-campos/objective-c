//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype) init{
    self = [super init];
    if (self) {
        // generate 2 random ints using arc4random
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        
        
        //make question string
//        _question = [NSString stringWithFormat:@"%d + %d = ", _leftValue, _rightValue];
        
        //get the answer and assign to answer
//        _answer = _leftValue + _rightValue;
        
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}


@end
