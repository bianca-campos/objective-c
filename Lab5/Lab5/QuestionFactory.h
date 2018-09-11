//
//  QuestionFactory.h
//  Lab3
//
//  Created by Bianca Campos on 2018-09-10.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property(nonatomic, strong) NSArray *questionTypes;
- (Question *) generateRandomQuestion;


@end
