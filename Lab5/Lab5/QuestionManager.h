//
//  QuestionManager.h
//  Lab3
//
//  Created by Bianca Campos on 2018-09-10.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;
- (NSString *) timeOutput;

@end
