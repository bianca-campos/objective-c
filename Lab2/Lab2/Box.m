//
//  Box.m
//  Lab2
//
//  Created by Bianca Campos on 2018-09-05.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

- (float) volume {
    return _width * _height * _length;
}

- (float) ratio:(Box *) big{
    float calc;
    float bigger = [big volume];
    float small = [self volume];
    calc = bigger / small;
    
    return calc;
}

@end
