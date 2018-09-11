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
    float percent;
    total = _right + _wrong;
    percent = (100 * _right) / total;
//    NSString *aswer = (stringWithFormat:@"score: ", _right, @" right,", _wrong, @"wrong ---- ", percent, @"%");
//    return aswer; //returning memory address
    return [NSString stringWithFormat: @"@Score: %d right, %d wrong --- percent %f" , _right, _wrong, percent];
    
    
}

@end
