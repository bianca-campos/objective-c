//
//  Box.h
//  Lab2
//
//  Created by Bianca Campos on 2018-09-05.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length;

@property(nonatomic, assign) float width;
@property(nonatomic, assign) float height;
@property(nonatomic, assign) float length;

- (float) volume;
- (float) ratio:(Box *) big;



@end
