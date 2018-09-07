//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *) score{
    int total;
    int percent;
    total = _right + _wrong;
    percent = ((total - _wrong) / total) * 100;
    NSString *aswer = (@"score: ", _right, @" right,", _wrong, @"wrong ---- ", percent, @"%");
    return aswer;
}

@end
