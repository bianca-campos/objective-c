//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"

@interface Question : NSObject
@property(nonatomic, strong) NSString *question;
@property(nonatomic, assign) NSInteger answer;
@property(nonatomic, strong) NSDate *startTime;
@property(nonatomic, strong) NSDate *endTime;
@property(nonatomic, assign) NSInteger leftValue;
@property(nonatomic, assign) NSInteger rightValue;


- (NSTimeInterval) answerTime;



@end
