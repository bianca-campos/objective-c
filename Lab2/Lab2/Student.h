//
//  Student.h
//  Lab2
//
//  Created by Bianca Campos on 2018-09-05.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
// define public properties
// define public methods
- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country;

@property(nonatomic, assign) int identification;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *country;

- (NSString *) getName;


@end
