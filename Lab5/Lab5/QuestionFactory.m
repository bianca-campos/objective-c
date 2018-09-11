//
//  QuestionFactory.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-10.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        //inicializing the array with the types of question
        _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion{
    //return an instance of +, -, *, / Question object
    NSString *type = [_questionTypes objectAtIndex: arc4random_uniform(4)];
    
    // [[? alloc] init]
    return [[NSClassFromString(type) alloc] init];
}

@end
