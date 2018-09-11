//
//  QuestionManager.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-10.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *) timeOutput{
    Question *last = [_questions objectAtIndex: [_questions count] -1];
    Question *first = [_questions objectAtIndex:0];
    
    NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
    
    long second =  lroundf(timeInterval);
    
    return [NSString stringWithFormat:@"Total time: %lus, average time: %lus", second, second / [_questions count]]; // s is for second - lu is long unsigned integer
}

@end
