//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
- (NSString *) score;
@property(nonatomic, assign) int right;
@property(nonatomic, assign) int wrong;

@end
