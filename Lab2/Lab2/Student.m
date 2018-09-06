//
//  Student.m
//  Lab2
//
//  Created by Bianca Campos on 2018-09-05.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "Student.h"
//class: user-defined type (template)
//properties - (attributes) (public and private)
//methods - (behaviors)

@interface Student()
// define private properties
// define private methods
@end

@implementation Student{
    //define private instance variables
//    NSString *_name;
//    NSString *_country;
    //using property for this
}

//implement methods
//contructor = inicializer = init

- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country
{
    self = [super init];
    if (self) {
        _identification = identification;
        _name = name;
        _country = country;
    }
    return self;
}

//using in properties
////getters
//
//- (NSString *) getName{
//    return _name;
//}
//
//- (NSString *) getCountry{
//    return _country;
//}
//
////setters
//
//- (void) setName: (NSString *) name{
//    _name = name;
//}
//
//- (void) setCountry: (NSString *) country{
//    _country = country;
//}



@end
