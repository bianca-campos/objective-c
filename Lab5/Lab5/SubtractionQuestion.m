//
//  SubtractionQuestion.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-10.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion{
    //make question string
    super.question = [NSString stringWithFormat:@"%ld - %ld = ", (long)super.leftValue, (long)super.rightValue];
    
    //get the answer and assign to answer
    super.answer = super.leftValue - super.rightValue;
    
}

@end
